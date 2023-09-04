#!/bin/sh -l
cd /github/workspace
echo "Building firmware"
result=$(pio run | sed -nE "s/^Building (.+).bin/\1/p")
binary_path="$result.bin"
echo "Output binary: $binary_path"
echo "binary=$binary_path" >> $GITHUB_OUTPUT
