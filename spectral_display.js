autowatch = 1;
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var MAX_EVENTS = 72;
var events = [];
var colours = {
  soprano: [0.94, 0.56, 0.69],
  alto: [0.93, 0.82, 0.50],
  tenor: [0.55, 0.82, 0.64],
  baritone: [0.43, 0.70, 0.86]
};

function clear() {
  events = [];
  mgraphics.redraw();
}

function spectrum() {
  var args = arrayfromargs(arguments);
  var instrument = String(args.shift());
  var id = Number(args.shift());
  var partials = [];
  for (var i = 0; i + 1 < args.length; i += 2) {
    partials.push([Number(args[i]), Number(args[i + 1])]);
  }
  events.push({
    instrument: instrument,
    id: id,
    partials: partials,
    born: Date.now()
  });
  if (events.length > MAX_EVENTS) events.shift();
  mgraphics.redraw();
}

function paint() {
  var size = mgraphics.size;
  var width = size[0];
  var height = size[1];
  background(width, height);
  grid(width, height);
  history(width, height);
  labels(width, height);
}

function background(width, height) {
  var gradient = mgraphics.pattern_create_linear(0, 0, 0, height);
  gradient.add_color_stop_rgba(0, 0.045, 0.048, 0.058, 1);
  gradient.add_color_stop_rgba(1, 0.018, 0.020, 0.027, 1);
  mgraphics.set_source(gradient);
  mgraphics.rectangle(0, 0, width, height);
  mgraphics.fill();
}

function grid(width, height) {
  var marks = [55, 110, 220, 440, 880, 1760, 3520, 7040, 14080];
  mgraphics.set_line_width(1);
  for (var i = 0; i < marks.length; i++) {
    var y = yForFrequency(marks[i], height);
    mgraphics.set_source_rgba(1, 1, 1, i === 3 ? 0.09 : 0.045);
    mgraphics.move_to(0, y);
    mgraphics.line_to(width, y);
    mgraphics.stroke();
  }
  for (var x = width * 0.1; x < width; x += width * 0.1) {
    mgraphics.set_source_rgba(1, 1, 1, 0.025);
    mgraphics.move_to(x, 0);
    mgraphics.line_to(x, height);
    mgraphics.stroke();
  }
}

function history(width, height) {
  if (!events.length) return;
  var usable = width - 44;
  var step = usable / MAX_EVENTS;
  var offset = MAX_EVENTS - events.length;
  for (var e = 0; e < events.length; e++) {
    var event = events[e];
    var x = 24 + (offset + e) * step;
    var colour = colours[event.instrument] || [0.8, 0.8, 0.8];
    for (var p = 0; p < event.partials.length; p++) {
      var frequency = event.partials[p][0];
      var amplitude = Math.max(0, Math.min(1, event.partials[p][1]));
      var y = yForFrequency(frequency, height);
      var alpha = 0.18 + Math.sqrt(amplitude) * 0.70;
      var thickness = 1.0 + Math.sqrt(amplitude) * 3.4;

      mgraphics.set_source_rgba(colour[0], colour[1], colour[2], alpha * 0.22);
      mgraphics.rectangle(x - step * 0.4, y - thickness * 2.4,
        Math.max(2, step * 1.65), thickness * 4.8);
      mgraphics.fill();

      mgraphics.set_source_rgba(colour[0], colour[1], colour[2], alpha);
      mgraphics.rectangle(x, y - thickness * 0.5,
        Math.max(2, step * 1.25), thickness);
      mgraphics.fill();
    }
  }
}

function labels(width, height) {
  mgraphics.select_font_face("Arial", "normal", "normal");
  mgraphics.set_font_size(10);
  mgraphics.set_source_rgba(1, 1, 1, 0.34);
  var marks = [[55, "55"], [220, "220"], [880, "880"],
    [3520, "3.5k"], [14080, "14k"]];
  for (var i = 0; i < marks.length; i++) {
    mgraphics.move_to(7, yForFrequency(marks[i][0], height) - 3);
    mgraphics.show_text(marks[i][1]);
  }
  mgraphics.set_source_rgba(1, 1, 1, 0.18);
  mgraphics.move_to(width - 92, height - 13);
  mgraphics.show_text("TIME  →");
}

function yForFrequency(frequency, height) {
  var minimum = Math.log(35) / Math.log(2);
  var maximum = Math.log(16000) / Math.log(2);
  var value = Math.log(Math.max(35, frequency)) / Math.log(2);
  return height - 20 - (value - minimum) / (maximum - minimum) * (height - 40);
}

function onresize() {
  mgraphics.redraw();
}
