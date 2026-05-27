#!/usr/bin/python3

# pip install svgpathtools

#!/usr/bin/env python3

from svgpathtools import svg2paths
import sys
import math

if len(sys.argv) < 2:
    print("Usage: python svg_to_xournalpp.py input.svg")
    sys.exit(1)

svg_file = sys.argv[1]

paths, attributes = svg2paths(svg_file)

SAMPLES = 40

lua = []

lua.append("-- Auto-generated from SVG")
lua.append("")
lua.append("function DrawGeneratedShape(xoff, yoff, scale)")
lua.append("")
lua.append("    local strokes = {}")
lua.append("")

for path in paths:

    points_x = []
    points_y = []

    total_segments = len(path)

    for segment in path:

        for i in range(SAMPLES):

            t = i / (SAMPLES - 1)

            p = segment.point(t)

            x = p.real
            y = p.imag

            points_x.append(f"xoff + scale*{x:.4f}")
            points_y.append(f"yoff + scale*{y:.4f}")

    if len(points_x) >= 2:

        lua.append("    table.insert(strokes,{")

        lua.append("        x = {")
        lua.append("            " + ", ".join(points_x))
        lua.append("        },")

        lua.append("        y = {")
        lua.append("            " + ", ".join(points_y))
        lua.append("        },")

        lua.append('        tool = "pen"')
        lua.append("    })")
        lua.append("")

lua.append("    app.addStrokes({strokes = strokes})")
lua.append("end")

with open("TitleRoundGenerated.lua", "w") as f:
    f.write("\n".join(lua))

print("Generated: TitleRoundGenerated.lua")
