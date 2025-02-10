# Xiaomi Dolby

XiaomiDolby with extensive support of 12 band GEQ settings & much more

### How to use?

1. Clone this repo to `vendor/dolby`

2. Inherit it from `device.mk` in device tree:

```
# Vendor Dolby
$(call inherit-product, vendor/dolby/dolby.mk)
```

3. Change these in BoardConfig makefile of your device tree:

```bash
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE :=

DEVICE_MANIFEST_FILE :=
```

To:

```bash
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE +=

DEVICE_MANIFEST_FILE +=
```

Changing the := to += in the device tree, won't make manifests be overwritten

If you face any issues, please report them with proper logs

Credits:
@kamikaonashi
@1xtash

