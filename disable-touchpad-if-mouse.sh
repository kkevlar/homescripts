#!/bin/sh

if xinput | grep -q "Mouse";then
bash /home/kevlar/Documents/devt/homescripts/pointerNT touchpad off
fi

if xinput | grep -q "DeathAdder";then
bash /home/kevlar/Documents/devt/homescripts/pointerNT touchpad off
fi

