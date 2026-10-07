#!/bin/bash
set -e

SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-$HOME/recalbox-build/recalbox}"

if [ ! -d "$TARGET/.git" ]; then
    echo "ERROR: Recalbox Git repository not found at:"
    echo "  $TARGET"
    echo
    echo "Usage:"
    echo "  $0 /path/to/recalbox"
    exit 1
fi

echo "Applying Pironman 5 overlay to:"
echo "  $TARGET"
echo

echo "[1/4] Installing board files..."
rsync -a \
    "$SOURCE_DIR/overlay/board/" \
    "$TARGET/board/"

echo "[2/4] Installing Buildroot packages..."
rsync -a \
    "$SOURCE_DIR/overlay/package/" \
    "$TARGET/package/"

echo "[3/4] Installing local project sources..."
rsync -a \
    --exclude='.git' \
    "$SOURCE_DIR/overlay/projects/" \
    "$TARGET/projects/"

echo "[4/4] Applying Recalbox source patch..."
cd "$TARGET"

if git apply --check "$SOURCE_DIR/patches/recalbox-pironman5.patch"; then
    git apply "$SOURCE_DIR/patches/recalbox-pironman5.patch"
    echo "Patch applied successfully."
else
    echo "ERROR: Recalbox patch does not apply cleanly."
    echo "The upstream Recalbox source may have changed."
    exit 1
fi

echo
echo "Pironman 5 integration applied successfully."
echo
echo "Build with:"
echo "  export ARCH=rpi5_64"
echo "  ./scripts/linux/recaldocker.sh"
