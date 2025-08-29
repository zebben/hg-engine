#!/usr/bin/env python3
"""
align_fairy_to_electric.py

Shift the disc pixels in fairy.png so they line up with electric.png (upper-left aligned).
- Foreground in fairy: detected via alpha > 0 (transparent background).
- Foreground in electric: detected by treating the top-left pixel color as background.

Usage:
  python align_fairy_to_electric.py electric.png fairy.png out_fairy_aligned.png

Optional:
  --force-size 32 32    # force the canvas size (defaults to electric's size)
"""

import argparse
from PIL import Image

def bbox_from_alpha(im_rgba):
    """Bounding box of nontransparent pixels using alpha. Returns (l,t,r,b) or None."""
    return im_rgba.getchannel("A").getbbox()

def bbox_from_bgcolor(im_rgba):
    """
    Bounding box of pixels that differ from the top-left RGB color.
    Ignores alpha entirely (useful when 'electric.png' has no tRNS).
    """
    w, h = im_rgba.size
    bg = im_rgba.getpixel((0, 0))[:3]
    px = im_rgba.convert("RGB")
    left, top, right, bottom = w, h, -1, -1
    for y in range(h):
        for x in range(w):
            if px.getpixel((x, y)) != bg:
                if x < left: left = x
                if y < top: top = y
                if x > right: right = x
                if y > bottom: bottom = y
    if right == -1:
        return None
    return (left, top, right + 1, bottom + 1)  # right/bottom exclusive

def paste_with_shift(im_rgba, dx, dy, size):
    """Paste im_rgba onto a transparent canvas of `size` at offset (dx, dy)."""
    out = Image.new("RGBA", size, (0, 0, 0, 0))
    out.paste(im_rgba, (dx, dy), im_rgba)
    return out

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("electric", help="Reference image (palette or RGBA), e.g. electric.png")
    ap.add_argument("fairy", help="Fairy source with disc to shift, e.g. fairy.png")
    ap.add_argument("output", help="Output aligned PNG path")
    ap.add_argument("--force-size", nargs=2, type=int, metavar=("W","H"),
                    help="Force canvas size (default: electric's size)")
    args = ap.parse_args()

    # Load images
    elec = Image.open(args.electric).convert("RGBA")
    fairy = Image.open(args.fairy).convert("RGBA")

    # Canvas size: default to electric's size (common case: 32x32)
    if args.force_size:
        canvas_size = (args.force_size[0], args.force_size[1])
        if elec.size != canvas_size:
            elec = elec.resize(canvas_size, Image.NEAREST)
        if fairy.size != canvas_size:
            fairy = fairy.resize(canvas_size, Image.NEAREST)
    else:
        canvas_size = elec.size
        if fairy.size != canvas_size:
            fairy = fairy.resize(canvas_size, Image.NEAREST)

    # Compute foreground bboxes
    elec_bbox = bbox_from_bgcolor(elec) or (0, 0, canvas_size[0], canvas_size[1])
    fairy_bbox = bbox_from_alpha(fairy)
    if fairy_bbox is None:
        # Fallback if fairy has no alpha: treat top-left as background
        fairy_bbox = bbox_from_bgcolor(fairy)
    if fairy_bbox is None:
        # Nothing to shift (fully blank)
        aligned = fairy.copy()
    else:
        # Shift so fairy's bbox.tl = electric's bbox.tl
        dx = elec_bbox[0] - fairy_bbox[0]
        dy = elec_bbox[1] - fairy_bbox[1]
        aligned = paste_with_shift(fairy, dx, dy, canvas_size)

    aligned.save(args.output)
    print(f"Saved aligned image -> {args.output}")

if __name__ == "__main__":
    main()
