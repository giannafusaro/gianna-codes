require 'color'
require 'Paint'
require 'awesome_print'
# AC3ED8


colors =
  ["945BD5","5BD59B", "27D085","f06d6c", "FF4136", "A33A39",
  "F2F285", "428CBD", "29A34D", "C85B5A",
  "1C4F70", "6CF093", "BD6742", "F0723C",
  "6BBD42", "A9F2AA", "8A7B75"]

def find_deltas color1, color2

end


# colors is an array of hex values
# output will be array of corresponding
# color ranges that i like (hopefully)
def next_colors colors

  deltas =
    {  h: -0.005270475636175553,
      s: -0.09197751660705145,
      l: 0.11176470588235293 }

  blerg = colors.inject([]) do |memo, color|
    rgb = convert_to_rgb(color)
    hsl = Color::RGB.from_fraction(rgb[0], rgb[1], rgb[2]).to_hsl
    new_color1 =
      Color::HSL.from_fraction(hsl.h + deltas[:h],
        hsl.s + deltas[:s],
        hsl.l + deltas[:l]).to_rgb
    new_color2 =
      Color::HSL.from_fraction(hsl.h - deltas[:h],
        hsl.s - deltas[:s],
        hsl.l - deltas[:l]).to_rgb
    memo << { color: "##{color}", color1: "##{new_color1.hex}", color2: "##{new_color2.hex}" }
    # memo << { color: "##{color}", rgb: rgb, hsl: hsl, color1: new_color1, color2: new_color2 }
  end

  puts colors
  ap blerg
  # up = { h: (h+2), s: (s+(9/100)), l: (l-(12/100)) }
  # down = { h: (h-2), s: (s-(9/100)), l: (l+(12/100)) }

  # Color::RGB.from_fraction(0.4, 0.6, 0.9).to_hsl


  # colors = [up, down]
end

def convert_to_rgb(hex)
  r = (hex[0..1].hex).fdiv(255)
  g = (hex[2..3].hex).fdiv(255)
  b = (hex[4..5].hex).fdiv(255)
  rgb = [r, g, b]
end

# Color::RGB.from_fraction(0.4, 0.6, 0.9).to_hsl
# Color::HSL.from_fraction(colors[0][:h],colors[0][:s], colors[0][:l]).to_rgb

# // hsl(153, 68%, 48%);
# // hsl(151, 59%, 60%);

next_colors colors




# // $colors: #f06d6c, #FF4136, #A33A39, #F2F285, #428CBD, #29A34D, #C85B5A, #1C4F70, #6CF093, #BD6742, #F0723C, #6BBD42, #A9F2AA, #8A7B75;
# //    fill: #F2F285;
# //    stroke: #F2F285;
# // }
# // 100% {
# //    fill: #BB74DC;
# //    stroke: #BB74DC;
# // }
# // 60% {
# //    fill: darken(#F2F285, 5%);
# //    stroke: darken(#F2F285, 5%);
# // }
# // 100% {
# //    fill: #AC3ED8;
# //    stroke: #AC3ED8;
# // }
#
# // hsl(153, 68%, 48%);
# // hsl(151, 59%, 60%);
# //
# //
# // hsl(0, 82%, 69%);
# // hsl(2, 91%, 57%);

# $colors:
# #5BD59B, #8fdab4, #27d085,
# #27D085, #5bd59b, #15a96c,
# #f06d6c, #f0a5a5, #f5362e,
# #FF4136, #f87976, #fc1600,
# #A33A39, #b85d5d, #802723,
# #F2F285, #f4f2bc, #f0f549,
# #428CBD, #75a6c3, #2a6b9c,
# #29A34D, #43c265, #177c38,
# #C85B5A, #cf8c8c, #b93530,
# #1C4F70, #307095, #0d2e46,
# #6CF093, #a5f0b9, #2ef56f,
# #F0723C, #ed9778, #ed5306,
# #6BBD42, #92c375, #4c9c2a,
# #A9F2AA, #ddf8dc, #70f276,
# #945BD5, #b08fda, #7b27d0
