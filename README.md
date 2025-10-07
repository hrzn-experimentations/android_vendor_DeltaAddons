# Quick look
DeltaAddons is a custom vendor tree for AOSP ROMs. made to extend the out-of-the-box experience. this vendor tree includes custom ringtones and FOSS apps.

# Implement it!
- add this to your local_manifests.xml
```xml
<project path="vendor/DeltaAddons" name="hrzn-experimentation/android_vendor_DeltaAddons" remote="github" revision="refs/heads/main"/>
```
- sync it
```bash
repo sync -c --fetch-submodules vendor/DeltaAddons -j$(nproc --all)
```
- add this to your device tree
```make
# DeltaAddons
$(call inherit-product, vendor/DeltaAddons/config.mk)
```

# Build flags
```make
TARGET_SHIP_METRO := true/false (Default: true)
Add Metro music player to your device

TARGET_SHIP_YT_CLIENTS := true/false (Default: false)
Add LibreTube, Metrolist, and Seal as YT clients
```

# Credits
- [PIKASONIC](https://www.youtube.com/@PIKASONIC) for the songs used by the ringtones
    - [Sayame](https://osu.ppy.sh/users/30409296) for the [Shine (Ringtone Size)](https://osu.ppy.sh/beatmapsets/2197150#osu/4649427)
