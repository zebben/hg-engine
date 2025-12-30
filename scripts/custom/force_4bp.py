import argparse
from PIL import Image
import sys
import os

def convert_to_4bpp(path):
    img = Image.open(path)

    # Convert to indexed color (max 16 colors)
    img = img.convert(
        "P",
        palette=Image.ADAPTIVE,
        colors=16
    )

    # Overwrite the original file as true 4bpp PNG
    img.save(path, bits=4)

def main():
    parser = argparse.ArgumentParser(
        description="Force an indexed PNG to true 4bpp (16 colors), overwriting the file."
    )
    parser.add_argument("path", help="Path to PNG file")

    args = parser.parse_args()

    if not os.path.isfile(args.path):
        print(f"Error: file not found: {args.path}", file=sys.stderr)
        sys.exit(1)

    try:
        convert_to_4bpp(args.path)
        print(f"Converted to 4bpp: {args.path}")
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
