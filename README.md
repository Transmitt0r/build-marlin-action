# Build Marlin Firmware Action

This action uses the platformio cli to build a [Marlin](https://github.com/MarlinFirmware/Marlin) firmware binary.

## Outputs

### `binary`

location of the resulting binary file

## Example usage

```yml
name: Marlin CI

on: [push]

jobs:
  build-marlin:
    runs-on: ubuntu-latest
    name: Build Marlin Firmware
    steps:
    - uses: actions/checkout@v2
    - id: build
      uses: Transmitt0r/build-marlin-action@v1
    - uses: actions/upload-artifact@v2
      with:
        name: firmware.bin
        path: "${{ steps.build.outputs.binary }}"
```
