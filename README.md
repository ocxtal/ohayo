
# ohayo.sh

Manipulating PC power button via CH340 relay module.
See also: https://github.com/andrewintw/usb-powered-relay

## Usage

```
(in root privilege)
# ./ohayo.sh --device /dev/ttyUSB0 on
# ./ohayo.sh --device /dev/ttyUSB0 kill
```

*`on` for toggling, `kill` for long press*

## Copyright and License

Copyright Hajime Suzuki (2020), MIT


