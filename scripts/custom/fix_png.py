from PIL import Image
from collections import Counter
from pathlib import Path

src = Path("data/graphics/item/base/fairy.png")
dst = Path("data/graphics/item/tm017.png")

im = Image.open(src).convert("RGBA")

# Ensure 32×32 (match your icon spec)
if im.size != (32, 32):
    im = im.resize((32, 32), Image.NEAREST)

pixels = list(im.getdata())  # (R,G,B,A)
opaque = [(r, g, b) for (r, g, b, a) in pixels if a > 0]

# Build up to 15 opaque colors (index 1..15). Index 0 will be transparent.
if not opaque:
    palette_colors = []
else:
    # Prefer exact colors if <=15; otherwise quantize to 15
    counts = Counter(opaque)
    uniq = list(counts.keys())
    if len(uniq) <= 15:
        palette_colors = [c for c, _ in counts.most_common(15)]
    else:
        strip = Image.new("RGB", (len(opaque), 1))
        strip.putdata(opaque)
        strip_q = strip.quantize(colors=15, dither=Image.Dither.NONE)
        pal = strip_q.getpalette()[:15 * 3]
        palette_colors = [(pal[i], pal[i+1], pal[i+2]) for i in range(0, len(pal), 3)]

# Transparent color first (index 0). Use (0,0,0) as the placeholder.
final_palette = [(0, 0, 0)] + palette_colors
while len(final_palette) < 16:
    final_palette.append((0, 0, 0))

# Flatten to 256 entries for PNG palette (Pillow expects 256*3 values)
flat_palette = [c for rgb in final_palette for c in rgb] + [0, 0, 0] * (256 - 16)

def nearest_index(rgb):
    r, g, b = rgb
    best_i, best_d = 1, 10**9
    for i, (pr, pg, pb) in enumerate(final_palette[1:16], start=1):
        dr, dg, db = r - pr, g - pg, b - pb
        d = dr*dr + dg*dg + db*db
        if d < best_d:
            best_d, best_i = d, i
    return best_i

# Map pixels: alpha==0 -> index 0, else nearest 1..15
indexed = []
for (r, g, b, a) in pixels:
    indexed.append(0 if a == 0 else nearest_index((r, g, b)))

out = Image.new("P", im.size)
out.putpalette(flat_palette)
out.putdata(indexed)
# Make palette index 0 transparent in the PNG tRNS chunk
out.save(dst, transparency=0, optimize=False)

# Quick verification
test = Image.open(dst)
print("Mode:", test.mode)                         # P
print("Size:", test.size)                         # (32, 32)
print("Unique indices used:", sorted(set(test.getdata())))
print("Transparent index:", test.info.get("transparency"))
