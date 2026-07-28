autowatch = 1;
inlets = 1;
outlets = 3;

var INSTRUMENTS = ["soprano", "alto", "tenor", "baritone"];
var CHANNELS = 12;
var TICK_MS = 100;
var data = {};
var layers = [];
var running = false;
var durationMs = 24000;
var anchorCount = 2;
var toleranceCents = 45;
var formantCenterHz = 900;
var formantWidthOctaves = 2.0;
var task = new Task(tick, this);
task.interval = TICK_MS;

function loadbang() {
  var backgroundPanel = this.patcher.getnamed("bg");
  if (backgroundPanel) this.patcher.sendtoback(backgroundPanel);
  var base = this.patcher.filepath.replace(/[^\/\\]+$/, "") + "data/";
  var loaded = 0;
  for (var i = 0; i < INSTRUMENTS.length; i++) {
    var name = INSTRUMENTS[i];
    var file = new File(base + name + ".json", "read");
    if (!file.isopen) {
      error("simple_engine: cannot open " + name + ".json\n");
      continue;
    }
    var text = "";
    while (file.position < file.eof) text += file.readline();
    file.close();
    // A few automatic analyses contain only one reliable component. Preserve
    // those catalogue records in JSON, but never select them for synthesis:
    // a one-sine "multiphonic" is exactly the failure this engine replaces.
    data[name] = JSON.parse(text).multiphonics.filter(function (item) {
      return item.partials.length >= 2;
    });
    if (data[name].length) loaded++;
  }
  if (loaded === INSTRUMENTS.length) outlet(2, "ready", loaded);
  else error("simple_engine: loaded " + loaded + " of 4 catalogues; RUN is disabled\n");
}

function toggle(value) {
  if (Number(value)) start();
  else stop();
}

function duration(value) {
  durationMs = Math.max(8000, Math.min(90000, Number(value) || 24000));
}

function anchors(value) {
  anchorCount = Math.max(2, Math.min(5, parseInt(value, 10) || 2));
}

function tolerance(value) {
  toleranceCents = Math.max(5, Math.min(150, Number(value) || 45));
}

function formant(value) {
  formantCenterHz = Math.max(80, Math.min(12000, Number(value) || 900));
}

function formantwidth(value) {
  formantWidthOctaves = Math.max(0.25, Math.min(6, Number(value) || 2));
}

function start() {
  stop();
  for (var i = 0; i < INSTRUMENTS.length; i++) {
    if (!data[INSTRUMENTS[i]] || !data[INSTRUMENTS[i]].length) {
      error("simple_engine: catalogue data is incomplete; cannot start\n");
      return;
    }
  }
  running = true;
  layers = [];
  addLayer(0);
  task.repeat();
}

function stop() {
  running = false;
  task.cancel();
  for (var i = 0; i < 4; i++) outlet(0, "env" + (i + 1), 0, 250);
  layers = [];
  outlet(1, "clear");
}

function addLayer(slot) {
  var instrument = INSTRUMENTS[slot];
  var bank = data[instrument] || [];
  if (!bank.length) return;
  var model = bank[Math.floor(Math.random() * bank.length)];
  var layer = {
    slot: slot,
    instrument: instrument,
    current: model,
    phase: "attack",
    elapsed: 0,
    active: true
  };
  layers[slot] = layer;
  configure(layer);
  outlet(0, "env" + (slot + 1), 1, attackTime());
  outlet(2, "voice", slot + 1, instrument, model.id, model.partials.length);
}

function configure(layer) {
  var slot = layer.slot + 1;
  for (var channel = 1; channel <= CHANNELS; channel++) {
    var partial = layer.current.partials[channel - 1];
    outlet(0, "freq" + slot, "setvalue", channel, partial ? partial.frequency : 440);
    outlet(0, "amp" + slot, "setvalue", channel, partial ? partial.amplitude : 0);
  }
  var frame = ["spectrum", layer.instrument, layer.current.id];
  for (var i = 0; i < layer.current.partials.length; i++) {
    frame.push(layer.current.partials[i].frequency, layer.current.partials[i].amplitude);
  }
  outlet(1, frame);
}

function tick() {
  if (!running) return;
  for (var i = 0; i < layers.length; i++) {
    var layer = layers[i];
    if (!layer || !layer.active) continue;
    layer.elapsed += TICK_MS;
    if (layer.phase === "attack" && layer.elapsed >= attackTime()) {
      layer.phase = "sustain";
      layer.elapsed = 0;
    } else if (layer.phase === "sustain" && layer.elapsed >= sustainTime()) {
      layer.phase = "release";
      layer.elapsed = 0;
      outlet(0, "env" + (i + 1), 0, releaseTime());
    } else if (layer.phase === "release" && layer.elapsed >= releaseTime() + 150) {
      if (shouldRetire(i)) {
        layer.active = false;
        outlet(2, "retire", i + 1);
      } else {
        layer.current = chooseNext(layer);
        layer.phase = "attack";
        layer.elapsed = 0;
        configure(layer);
        outlet(0, "env" + (i + 1), 1, attackTime());
      }
    }
  }
  shapeTexture();
  emitVisualFrame();
}

function emitVisualFrame() {
  outlet(1, "frame");
  for (var i = 0; i < layers.length; i++) {
    var layer = layers[i];
    if (!layer || !layer.active) continue;
    var message = ["spectrum", layer.instrument, layer.current.id];
    for (var p = 0; p < layer.current.partials.length; p++) {
      message.push(layer.current.partials[p].frequency,
        layer.current.partials[p].amplitude);
    }
    outlet(1, message);
  }
}

function attackTime() {
  return Math.round(durationMs * 0.38);
}

function sustainTime() {
  return Math.round(durationMs * 0.34);
}

function releaseTime() {
  return Math.round(durationMs * 0.38);
}

function shapeTexture() {
  var active = 0;
  for (var i = 0; i < 4; i++) if (layers[i] && layers[i].active) active++;
  if (active < 4 && Math.random() < 0.0008 * (5 - active)) {
    for (var slot = 0; slot < 4; slot++) {
      if (!layers[slot] || !layers[slot].active) {
        addLayer(slot);
        break;
      }
    }
  }
}

function shouldRetire(slot) {
  var active = 0;
  for (var i = 0; i < 4; i++) if (layers[i] && layers[i].active) active++;
  return slot > 0 && active > 1 && Math.random() < (active === 4 ? 0.34 : 0.14);
}

function chooseNext(layer) {
  var anchors = selectAnchors(layer.current.partials);
  var candidates = [];
  for (var i = 0; i < INSTRUMENTS.length; i++) {
    var bank = data[INSTRUMENTS[i]] || [];
    for (var j = 0; j < bank.length; j++) {
      var candidate = bank[j];
      if (INSTRUMENTS[i] === layer.instrument && candidate.id === layer.current.id) continue;
      var shared = sharedCount(anchors, candidate.partials, toleranceCents);
      if (shared >= anchors.length) {
        var totalShared = sharedCount(layer.current.partials, candidate.partials, toleranceCents);
        // Required anchors connect the colours; extra resemblance is penalised.
        candidates.push({
          instrument: INSTRUMENTS[i],
          model: candidate,
          score: Math.random() * 2 - totalShared * 0.8
        });
      }
    }
  }
  if (!candidates.length) return randomDifferent(layer);
  candidates.sort(function (a, b) { return b.score - a.score; });
  var pick = candidates[Math.floor(Math.random() * Math.min(8, candidates.length))];
  layer.instrument = pick.instrument;
  return pick.model;
}

function randomDifferent(layer) {
  var name = INSTRUMENTS[Math.floor(Math.random() * INSTRUMENTS.length)];
  var bank = data[name] || [];
  layer.instrument = name;
  return bank[Math.floor(Math.random() * bank.length)];
}

function selectAnchors(partials) {
  var pool = partials.slice();
  var result = [];
  while (pool.length && result.length < anchorCount) {
    var weights = [];
    var total = 0;
    for (var i = 0; i < pool.length; i++) {
      var distance = Math.abs(Math.log(pool[i].frequency / formantCenterHz) / Math.log(2));
      var weight = 0.1 + Math.exp(-0.5 * Math.pow(distance / formantWidthOctaves, 2));
      weights.push(weight);
      total += weight;
    }
    var draw = Math.random() * total;
    var chosen = 0;
    for (var j = 0; j < weights.length; j++) {
      draw -= weights[j];
      if (draw <= 0) { chosen = j; break; }
    }
    result.push(pool.splice(chosen, 1)[0]);
  }
  return result;
}

function sharedCount(a, b, tolerance) {
  var used = {};
  var count = 0;
  for (var i = 0; i < a.length; i++) {
    var best = -1;
    var distance = Infinity;
    for (var j = 0; j < b.length; j++) {
      if (used[j]) continue;
      var cents = Math.abs(1200 * Math.log(b[j].frequency / a[i].frequency) / Math.log(2));
      if (cents < distance) { distance = cents; best = j; }
    }
    if (best >= 0 && distance <= tolerance) {
      used[best] = true;
      count++;
    }
  }
  return count;
}
