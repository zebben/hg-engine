import sys
import os

# Skip First Rival Battle and Vanilla Double Battles
# TODO zebben get the other double battle IDs
IMPORTANT_TRAINER_IDS = {
    495,
    496,
    497
}

def patch_all_trainers(directory):
    trainer_files = sorted(os.listdir(directory))

    for filename in trainer_files:
        print(f"[ZEBBEN][READ] TrainerData {filename}")

        trainer_index = int(filename.split('_')[-1])
        if trainer_index == 0:
            print("[ZEBBEN][SKIP] Trainer at index 0")
            continue  # skip trainer 0

        path = os.path.join(directory, filename)

        with open(path, 'rb') as f:
            data = bytearray(f.read())

        if trainer_index not in IMPORTANT_TRAINER_IDS:
            if len(data) > 16:
                if data[16] == 0:
                    data[16] |= 0x03
                    print(f"[ZEBBEN][PATCH] Trainer {trainer_index}: Set double battle flag at offset 0x10")

                else:
                    print(f"[ZEBBEN][SKIP] Trainer {trainer_index}: Already has value at offset 0x10: {data[16]:02X}")
            else:
                print(f"[ZEBBEN][WARN] Trainer {trainer_index} too small (< 17 bytes)")

        with open(path, 'wb') as f:
            f.write(data)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 patch_trainer_file.py <trainer_dir>")
        sys.exit(1)

    patch_all_trainers(sys.argv[1])
