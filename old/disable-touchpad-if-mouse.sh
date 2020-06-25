#!/bin/sh

if xinput | grep -q "Mouse";then
bash /home/kevlar/Documents/homescripts/pointerNT touchpad off
fi

if xinput | grep -q "Logitech M510";then
bash /home/kevlar/Documents/homescripts/pointerNT touchpad off
fi

if xinput | grep -q "DeathAdder";then
bash /home/kevlar/Documents/homescripts/pointerNT touchpad off
fi

