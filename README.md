<p align="center">
<img src="https://github.com/hrzndelta/android_vendor_DeltaAddons/blob/main/Banner.png">
</p>

# Quick look
DeltaAddons is a custom vendor tree for LineageOS based ROMs. made to extend the out-of-the-box experience. this vendor tree includes privacy and customization focused apps and a few extra goodies

# Implement it!
- add this to your local_manifests.xml
```xml
<project path="vendor/DeltaAddons" name="hrzndelta/android_vendor_DeltaAddons" remote="github" revision="refs/heads/main"/>
```
- sync it
```bash
repo sync -c --fetch-submodules android_vendor_DeltaAddons -j$(nproc --all)
```
- patch vendor/lineage and fix the conflict if needed
```bash
cd vendor/lineage
git am --reject ../DeltaAddons/patches/0001-DeltaAddons-Remove-conflicting-sound-props.patch
```
- add this to your device tree
```make
# DeltaAddons
WITH_GMS := false
$(call inherit-product, vendor/DeltaAddons/config.mk)
```

# Build flags
```make
TARGET_USES_PLAYSTORE := true/false (Default: false)
Add Google Play Store instead of Aurora Store as the app store

TARGET_SHIP_JAMESDSP := true/false (Default: false)
Add JamesDSP to your device

TARGET_SHIP_METRO := true/false (Default: true)
Add Metro music player to your device

TARGET_SHIP_YT_CLIENTS := true/false (Default: false)
Add LibreTube, Metrolist, and Seal as YT clients

TARGET_SHIP_MONET_BOOTANIMATION := true/false (Default: false)
Use Google Pixel styled bootanimation
```

# Notes
- This vendor tree intended to use within LineageOS based ROMs that have the vanilla and GMS variant, if the 
ROM source includes microG or if you don't want to include any GMS packages, remove the respective vendor tree first.  
- This vendor tree is also included some wallpapers and ringtones, all credits goes to the original creator.

# Credits
- [JamesDSP](https://github.com/Genesis-Devices/vendor_JamesDSP) by [James Fung](https://github.com/james34602), [Tim Schneeberger](https://github.com/timschneeb) , and [GenesisOS (Vendor Tree)](https://github.com/Genesis-Devices)
- [microG](https://github.com/microg/GmsCore/wiki) by [microG Devs](https://github.com/microg/GmsCore/wiki) and [LineageOS for microG (Vendor Tree)](https://github.com/lineageos4microg/)
- [PIKASONIC](https://www.youtube.com/@PIKASONIC) for the songs used by the ringtones
    - [Sayame](https://osu.ppy.sh/users/30409296) for the [Shine (Ringtone Size)](https://osu.ppy.sh/beatmapsets/2197150#osu/4649427)
- [白洲](https://www.pixiv.net/en/users/49351285) for the [Delta artwork](https://www.pixiv.net/en/artworks/92730373) used by the banner
