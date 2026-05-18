#!/bin/bash
# build-local.sh — build InfinityOS ISO on a local Debian/Ubuntu machine.
# Must be run as root or with sudo.
# Requires: live-build, debootstrap

set -euo pipefail

if [[ $EUID -ne 0 ]]; then
    echo "Run with sudo: sudo bash scripts/build-local.sh"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="${SCRIPT_DIR}/.."
cd "${ROOT_DIR}"

echo "=== InfinityOS ISO Build ==="
echo "This will take 40-60 minutes on a fast machine."
echo ""

# Clean previous build
if [[ "${1:-}" == "--clean" ]]; then
    echo "Cleaning previous build..."
    lb clean
fi

# Configure
chmod +x auto/config auto/build auto/clean
./auto/config

# Build
lb build 2>&1 | tee build.log

# Rename output
if ls *.iso 1>/dev/null 2>&1; then
    ISO=$(ls *.iso | head -1)
    echo ""
    echo "=== Build complete ==="
    echo "ISO: ${ISO}"
    sha256sum "${ISO}"
else
    echo "Build failed — check build.log"
    exit 1
fi
