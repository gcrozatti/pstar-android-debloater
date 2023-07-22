# Android Debloater for Motorola Edge 20 PRO

Bash script to remove system apps, a.k.a Bloatware <br />

# Info

Commercial name: Motorola Edge 20 PRO <br />
Codename: PSTAR or SIERRA <br />
Android Version: 13 'Tiramisu' <br />

# Packages

### Motorola
Packages I choose to keep: <br />
Some are 'no-disable' package and need unlocked bootloader <br />
```
com.motorola.paks                           
com.motorola.paks.notification
com.motorola.android.fota
com.motorola.enterprise.adapter.service
com.motorola.android.providers.settings
com.motorola.imagertuning_V2
com.motorola.camera3
com.motorola.launcher3
com.motorola.camera3.content.ai
com.motorola.ccc.ota
```

# Dependencies

Android Plataform Tools <br />
https://developer.android.com/tools/releases/platform-tools

# Permissions

### Unix* Platforms

```
chmod +x pstar-debloater-android13-stockrom.sh
./pstar-debloater-android13-stockrom.sh
```

### Windows Platform

- install Git <br />
- Add Git Bash to windows context menu by selecting its option. <br />
- Right click in the root folder of this cloned repository and select Git Bash Here. <br />

```
chmod +x pstar-debloater-android13-stockrom.sh
./pstar-debloater-android13-stockrom.sh
```

### Contribution
Thanks for original android debloater script: https://inatagan.github.io/android-debloater/
