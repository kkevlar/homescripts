#!/bin/sh

if xinput | grep -q "Mouse";then
bash $HOME/.scripts/pointerNT touchpad off
fi
sleep 1m
if xinput | grep -q "Mouse";then
bash $HOME/.scripts/pointerNT touchpad off
fi
sleep 3m
if xinput | grep -q "Mouse";then
bash $HOME/.scripts/pointerNT touchpad off
fi
