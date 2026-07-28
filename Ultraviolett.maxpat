{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 5,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80,
      40,
      1200,
      1180
    ],
    "openinpresentation": 1,
    "presentation_rect": [
      0,
      0,
      1440,
      900
    ],
    "bgcolor": [
      0.027,
      0.03,
      0.038,
      1
    ],
    "boxes": [
      {
        "box": {
          "id": "bg",
          "maxclass": "panel",
          "patching_rect": [
            20,
            20,
            1160,
            735
          ],
          "bgcolor": [
            0.027,
            0.03,
            0.038,
            1
          ],
          "border": 0,
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            1440,
            900
          ]
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            45,
            35,
            420,
            45
          ],
          "fontsize": 30,
          "textcolor": [
            0.93,
            0.93,
            0.95,
            1
          ],
          "text": "ULTRAVIOLETT",
          "presentation": 1,
          "presentation_rect": [
            54,
            42,
            600,
            60
          ]
        }
      },
      {
        "box": {
          "id": "subtitle",
          "maxclass": "comment",
          "patching_rect": [
            48,
            76,
            360,
            22
          ],
          "fontsize": 11,
          "textcolor": [
            0.53,
            0.55,
            0.61,
            1
          ],
          "text": "OVERTONE MULTIPLICATION STUDY",
          "presentation": 1,
          "presentation_rect": [
            58,
            94,
            430,
            24
          ]
        }
      },
      {
        "box": {
          "id": "run-label",
          "maxclass": "comment",
          "patching_rect": [
            46,
            118,
            70,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.74,
            0.75,
            0.78,
            1
          ],
          "text": "RUN",
          "presentation": 1,
          "presentation_rect": [
            58,
            148,
            70,
            20
          ]
        }
      },
      {
        "box": {
          "id": "run",
          "maxclass": "toggle",
          "patching_rect": [
            48,
            140,
            36,
            36
          ],
          "bgcolor": [
            0.12,
            0.13,
            0.16,
            1
          ],
          "checkedcolor": [
            0.72,
            0.57,
            0.92,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            58,
            174,
            42,
            42
          ]
        }
      },
      {
        "box": {
          "id": "run-pre",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            185,
            100,
            22
          ],
          "text": "prepend toggle"
        }
      },
      {
        "box": {
          "id": "speed-label",
          "maxclass": "comment",
          "patching_rect": [
            160,
            118,
            92,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.74,
            0.75,
            0.78,
            1
          ],
          "text": "DURATION",
          "presentation": 1,
          "presentation_rect": [
            168,
            148,
            110,
            20
          ]
        }
      },
      {
        "box": {
          "id": "speed",
          "maxclass": "dial",
          "patching_rect": [
            165,
            140,
            45,
            45
          ],
          "bgcolor": [
            0.08,
            0.09,
            0.11,
            1
          ],
          "needlecolor": [
            0.93,
            0.82,
            0.5,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            168,
            174,
            52,
            52
          ]
        }
      },
      {
        "box": {
          "id": "speed-scale",
          "maxclass": "newobj",
          "patching_rect": [
            155,
            196,
            150,
            22
          ],
          "text": "scale 0 127 60000 12000"
        }
      },
      {
        "box": {
          "id": "speed-pre",
          "maxclass": "newobj",
          "patching_rect": [
            155,
            225,
            110,
            22
          ],
          "text": "prepend duration"
        }
      },
      {
        "box": {
          "id": "formant-label",
          "maxclass": "comment",
          "patching_rect": [
            300,
            118,
            92,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.74,
            0.75,
            0.78,
            1
          ],
          "text": "FORMANT",
          "presentation": 1,
          "presentation_rect": [
            308,
            148,
            110,
            20
          ]
        }
      },
      {
        "box": {
          "id": "formant",
          "maxclass": "dial",
          "patching_rect": [
            305,
            140,
            45,
            45
          ],
          "bgcolor": [
            0.08,
            0.09,
            0.11,
            1
          ],
          "needlecolor": [
            0.55,
            0.82,
            0.64,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            308,
            174,
            52,
            52
          ]
        }
      },
      {
        "box": {
          "id": "formant-scale",
          "maxclass": "newobj",
          "patching_rect": [
            295,
            196,
            145,
            22
          ],
          "text": "scale 0 127 120. 8000."
        }
      },
      {
        "box": {
          "id": "formant-pre",
          "maxclass": "newobj",
          "patching_rect": [
            295,
            225,
            110,
            22
          ],
          "text": "prepend formant"
        }
      },
      {
        "box": {
          "id": "anchors-label",
          "maxclass": "comment",
          "patching_rect": [
            455,
            118,
            120,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.74,
            0.75,
            0.78,
            1
          ],
          "text": "SHARED PARTIALS",
          "presentation": 1,
          "presentation_rect": [
            458,
            148,
            150,
            20
          ]
        }
      },
      {
        "box": {
          "id": "anchors",
          "maxclass": "number",
          "patching_rect": [
            460,
            145,
            54,
            24
          ],
          "minimum": 2,
          "maximum": 5,
          "bgcolor": [
            0.08,
            0.09,
            0.11,
            1
          ],
          "textcolor": [
            0.94,
            0.56,
            0.69,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            458,
            180,
            64,
            28
          ]
        }
      },
      {
        "box": {
          "id": "anchors-pre",
          "maxclass": "newobj",
          "patching_rect": [
            450,
            196,
            105,
            22
          ],
          "text": "prepend anchors"
        }
      },
      {
        "box": {
          "id": "master-label",
          "maxclass": "comment",
          "patching_rect": [
            600,
            118,
            92,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.74,
            0.75,
            0.78,
            1
          ],
          "text": "LEVEL",
          "presentation": 1,
          "presentation_rect": [
            618,
            148,
            110,
            20
          ]
        }
      },
      {
        "box": {
          "id": "master",
          "maxclass": "dial",
          "patching_rect": [
            605,
            140,
            45,
            45
          ],
          "bgcolor": [
            0.08,
            0.09,
            0.11,
            1
          ],
          "needlecolor": [
            0.43,
            0.7,
            0.86,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            618,
            174,
            52,
            52
          ]
        }
      },
      {
        "box": {
          "id": "master-scale",
          "maxclass": "newobj",
          "patching_rect": [
            595,
            196,
            135,
            22
          ],
          "text": "scale 0 127 0. 0.35"
        }
      },
      {
        "box": {
          "id": "master-pack",
          "maxclass": "newobj",
          "patching_rect": [
            595,
            225,
            85,
            22
          ],
          "text": "pack 0. 100"
        }
      },
      {
        "box": {
          "id": "master-line",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            225,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "legend-s",
          "maxclass": "comment",
          "patching_rect": [
            760,
            122,
            110,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.94,
            0.56,
            0.69,
            1
          ],
          "text": "●  SOPRANO",
          "presentation": 1,
          "presentation_rect": [
            785,
            154,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "legend-a",
          "maxclass": "comment",
          "patching_rect": [
            875,
            122,
            90,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.93,
            0.82,
            0.5,
            1
          ],
          "text": "●  ALTO",
          "presentation": 1,
          "presentation_rect": [
            915,
            154,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "legend-t",
          "maxclass": "comment",
          "patching_rect": [
            965,
            122,
            95,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.55,
            0.82,
            0.64,
            1
          ],
          "text": "●  TENOR",
          "presentation": 1,
          "presentation_rect": [
            1020,
            154,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "legend-b",
          "maxclass": "comment",
          "patching_rect": [
            1060,
            122,
            105,
            20
          ],
          "fontsize": 10,
          "textcolor": [
            0.43,
            0.7,
            0.86,
            1
          ],
          "text": "●  BARITONE",
          "presentation": 1,
          "presentation_rect": [
            1130,
            154,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "display",
          "maxclass": "jsui",
          "patching_rect": [
            45,
            270,
            1090,
            385
          ],
          "filename": "spectral_display.js",
          "text": "spectral_display.js",
          "presentation": 1,
          "presentation_rect": [
            54,
            255,
            1332,
            555
          ]
        }
      },
      {
        "box": {
          "id": "caption",
          "maxclass": "comment",
          "patching_rect": [
            45,
            665,
            700,
            22
          ],
          "fontsize": 10,
          "textcolor": [
            0.42,
            0.44,
            0.49,
            1
          ],
          "text": "A spectral field moving from left to right. Low frequencies remain below; high frequencies rise.",
          "presentation": 1,
          "presentation_rect": [
            56,
            828,
            820,
            24
          ]
        }
      },
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            720,
            145,
            22
          ],
          "text": "js simple_engine.js"
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "patching_rect": [
            210,
            720,
            760,
            22
          ],
          "text": "route freq1 amp1 env1 freq2 amp2 env2 freq3 amp3 env3 freq4 amp4 env4"
        }
      },
      {
        "box": {
          "id": "freq1",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "cycle1",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            807,
            75,
            22
          ],
          "text": "mc.cycle~"
        }
      },
      {
        "box": {
          "id": "amp1",
          "maxclass": "newobj",
          "patching_rect": [
            175,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "weight1",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            839,
            55,
            22
          ],
          "text": "mc.*~"
        }
      },
      {
        "box": {
          "id": "mix1",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            871,
            100,
            22
          ],
          "text": "mc.mixdown~ 1"
        }
      },
      {
        "box": {
          "id": "env1",
          "maxclass": "newobj",
          "patching_rect": [
            160,
            871,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "fade1",
          "maxclass": "newobj",
          "patching_rect": [
            45,
            903,
            45,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "freq2",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "cycle2",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            807,
            75,
            22
          ],
          "text": "mc.cycle~"
        }
      },
      {
        "box": {
          "id": "amp2",
          "maxclass": "newobj",
          "patching_rect": [
            440,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "weight2",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            839,
            55,
            22
          ],
          "text": "mc.*~"
        }
      },
      {
        "box": {
          "id": "mix2",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            871,
            100,
            22
          ],
          "text": "mc.mixdown~ 1"
        }
      },
      {
        "box": {
          "id": "env2",
          "maxclass": "newobj",
          "patching_rect": [
            425,
            871,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "fade2",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            903,
            45,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "freq3",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "cycle3",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            807,
            75,
            22
          ],
          "text": "mc.cycle~"
        }
      },
      {
        "box": {
          "id": "amp3",
          "maxclass": "newobj",
          "patching_rect": [
            705,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "weight3",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            839,
            55,
            22
          ],
          "text": "mc.*~"
        }
      },
      {
        "box": {
          "id": "mix3",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            871,
            100,
            22
          ],
          "text": "mc.mixdown~ 1"
        }
      },
      {
        "box": {
          "id": "env3",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            871,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "fade3",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            903,
            45,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "freq4",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "cycle4",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            807,
            75,
            22
          ],
          "text": "mc.cycle~"
        }
      },
      {
        "box": {
          "id": "amp4",
          "maxclass": "newobj",
          "patching_rect": [
            970,
            775,
            120,
            22
          ],
          "text": "mc.sig~ @chans 12"
        }
      },
      {
        "box": {
          "id": "weight4",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            839,
            55,
            22
          ],
          "text": "mc.*~"
        }
      },
      {
        "box": {
          "id": "mix4",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            871,
            100,
            22
          ],
          "text": "mc.mixdown~ 1"
        }
      },
      {
        "box": {
          "id": "env4",
          "maxclass": "newobj",
          "patching_rect": [
            955,
            871,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "fade4",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            903,
            45,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "sum12",
          "maxclass": "newobj",
          "patching_rect": [
            320,
            945,
            40,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "sum34",
          "maxclass": "newobj",
          "patching_rect": [
            675,
            945,
            40,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "sum",
          "maxclass": "newobj",
          "patching_rect": [
            490,
            980,
            40,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "headroom",
          "maxclass": "newobj",
          "patching_rect": [
            490,
            1012,
            65,
            22
          ],
          "text": "*~ 0.12"
        }
      },
      {
        "box": {
          "id": "master-mul",
          "maxclass": "newobj",
          "patching_rect": [
            490,
            1044,
            45,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "clip",
          "maxclass": "newobj",
          "patching_rect": [
            490,
            1076,
            105,
            22
          ],
          "text": "clip~ -0.95 0.95"
        }
      },
      {
        "box": {
          "id": "dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            490,
            1110,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1308,
            38,
            52,
            52
          ]
        }
      },
      {
        "box": {
          "id": "load-speed",
          "maxclass": "newobj",
          "patching_rect": [
            780,
            720,
            85,
            22
          ],
          "text": "loadmess 55"
        }
      },
      {
        "box": {
          "id": "load-formant",
          "maxclass": "newobj",
          "patching_rect": [
            875,
            720,
            90,
            22
          ],
          "text": "loadmess 13"
        }
      },
      {
        "box": {
          "id": "load-anchors",
          "maxclass": "newobj",
          "patching_rect": [
            975,
            720,
            80,
            22
          ],
          "text": "loadmess 2"
        }
      },
      {
        "box": {
          "id": "load-master",
          "maxclass": "newobj",
          "patching_rect": [
            1065,
            720,
            85,
            22
          ],
          "text": "loadmess 45"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "run",
            0
          ],
          "destination": [
            "run-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "run-pre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "speed",
            0
          ],
          "destination": [
            "speed-scale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "speed-scale",
            0
          ],
          "destination": [
            "speed-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "speed-pre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "formant",
            0
          ],
          "destination": [
            "formant-scale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "formant-scale",
            0
          ],
          "destination": [
            "formant-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "formant-pre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "anchors",
            0
          ],
          "destination": [
            "anchors-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "anchors-pre",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "master",
            0
          ],
          "destination": [
            "master-scale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "master-scale",
            0
          ],
          "destination": [
            "master-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "master-pack",
            0
          ],
          "destination": [
            "master-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            0
          ],
          "destination": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            1
          ],
          "destination": [
            "display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "freq1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            1
          ],
          "destination": [
            "amp1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            2
          ],
          "destination": [
            "env1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "freq1",
            0
          ],
          "destination": [
            "cycle1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle1",
            0
          ],
          "destination": [
            "weight1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "amp1",
            0
          ],
          "destination": [
            "weight1",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weight1",
            0
          ],
          "destination": [
            "mix1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix1",
            0
          ],
          "destination": [
            "fade1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "env1",
            0
          ],
          "destination": [
            "fade1",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            3
          ],
          "destination": [
            "freq2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            4
          ],
          "destination": [
            "amp2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            5
          ],
          "destination": [
            "env2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "freq2",
            0
          ],
          "destination": [
            "cycle2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle2",
            0
          ],
          "destination": [
            "weight2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "amp2",
            0
          ],
          "destination": [
            "weight2",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weight2",
            0
          ],
          "destination": [
            "mix2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix2",
            0
          ],
          "destination": [
            "fade2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "env2",
            0
          ],
          "destination": [
            "fade2",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            6
          ],
          "destination": [
            "freq3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            7
          ],
          "destination": [
            "amp3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            8
          ],
          "destination": [
            "env3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "freq3",
            0
          ],
          "destination": [
            "cycle3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle3",
            0
          ],
          "destination": [
            "weight3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "amp3",
            0
          ],
          "destination": [
            "weight3",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weight3",
            0
          ],
          "destination": [
            "mix3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix3",
            0
          ],
          "destination": [
            "fade3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "env3",
            0
          ],
          "destination": [
            "fade3",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            9
          ],
          "destination": [
            "freq4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            10
          ],
          "destination": [
            "amp4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            11
          ],
          "destination": [
            "env4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "freq4",
            0
          ],
          "destination": [
            "cycle4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cycle4",
            0
          ],
          "destination": [
            "weight4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "amp4",
            0
          ],
          "destination": [
            "weight4",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weight4",
            0
          ],
          "destination": [
            "mix4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix4",
            0
          ],
          "destination": [
            "fade4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "env4",
            0
          ],
          "destination": [
            "fade4",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-speed",
            0
          ],
          "destination": [
            "speed",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-formant",
            0
          ],
          "destination": [
            "formant",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-anchors",
            0
          ],
          "destination": [
            "anchors",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load-master",
            0
          ],
          "destination": [
            "master",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fade1",
            0
          ],
          "destination": [
            "sum12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fade2",
            0
          ],
          "destination": [
            "sum12",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fade3",
            0
          ],
          "destination": [
            "sum34",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fade4",
            0
          ],
          "destination": [
            "sum34",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sum12",
            0
          ],
          "destination": [
            "sum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sum34",
            0
          ],
          "destination": [
            "sum",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sum",
            0
          ],
          "destination": [
            "headroom",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "headroom",
            0
          ],
          "destination": [
            "master-mul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "master-line",
            0
          ],
          "destination": [
            "master-mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "master-mul",
            0
          ],
          "destination": [
            "clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clip",
            0
          ],
          "destination": [
            "dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clip",
            0
          ],
          "destination": [
            "dac",
            1
          ]
        }
      }
    ]
  }
}