# TM Configuration
---
# Thrustmaster Installation Files (and Drivers)

- Drivers: https://ts.thrustmaster.com/download/pub/webupdate/hotaswt/2018_TMHW_1.exe
- TARGET Software: https://ts.thrustmaster.com/download/accessories/pc/hotas/software/TARGET/TARGET_v3.0.23.608.exe

### Changes

Please send back any changes/refinements you make to the Star Citizen profile. I will incorporate them into this repository.

### Description

This repo contains the necessary files to use a TM Warthog HOTAS with Star Citizen and fully utilize the switches. The TMC script (used with target script editor, not target UI) re maps the HOTAS buttons and switch functions to 86 separate DX buttons. ***Note:*** The contents of this repository are considered a work-in-progress, therefore this shouldn't be considered as a complete solution.

### Contents

```
.
├── LICENSE                                  # MIT License
├── README.md                                # This file
├── assets
│   ├── sc-profile
│   │   └── layout_dbx-r1_exported.xml       # Star Citizen profile. Should only be used when the TMC file is loaded. 
│   └── default-mapping
│       ├── ec_hotas_plate.png               # Image of TM Warthog throttle plate (for reference)
│       ├── joystick_default.png             # Star Citizen default mapping for Warthog joystick
│       └── throttle_default.png             # Star Citizen default mapping for Warthog throttle
├── scripts
│   └── dx
│       ├── dx_mapping.png                   # Visual containing the DX button mapping numbers. Useful for setting up profiles.
│       ├── include                          # Included libraries for TMC solution
│       │   ├── apc.tmh
│       │   ├── dx+.tmh
│       │   ├── h9p.tmh
│       │   ├── ldc.tmh
│       │   ├── pov.tmh
│       │   └── sws.tmh
│       └── main.tmc                          # main.tmc should be loaded into target script editor
├── install.bat                               # Install the target script and autorun upon login
├── uninstall.bat                             # Disables the automatic start of the target script
└── update.ps1                                # Updates this installation with new releases
```

### Instructions

The layout_dbx-r1_exported.xml should be copied to the Star Citizen user folder location, as usual. To prepare the HOTAS, run the install.bat file. Thrustmaster Target must be installed for the script to work properly.
