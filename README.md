# Build Marlin Firmware Action

This action uses the platformio cli to build a [Marlin](https://github.com/MarlinFirmware/Marlin) firmware binary.

Make sure that in your `platformio.ini` you set the `default_envs` variable to match your printer. Example for an Ender3 v2:

```ini
...
[platformio]
src_dir      = Marlin
boards_dir   = buildroot/share/PlatformIO/boards
default_envs = STM32F103RET6_creality
include_dir  = Marlin
...
```

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
      uses: Transmitt0r/build-marlin-action@v1.0.0
    - uses: actions/upload-artifact@v2
      with:
        name: firmware.bin
        path: "${{ steps.build.outputs.binary }}"
```
