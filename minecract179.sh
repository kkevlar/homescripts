#!/bin/bash
curl -o SMC.jar "https://docs.google.com/uc?id=0B5_wYgbEk-GZOUY5X2lHVURTLUk&export=download"

chmod a+x SMC.jar

curl -L -o mac-mc.zip "https://github.com/rad-trophy/minecraft/releases/download/v1/minecraft-mac.zip"

unzip mac-mc.zip -d $HOME/Library/Application\ Support/






