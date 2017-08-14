hPath=~/Documents/homescripts



if grep --quiet "#usetup complete" ~/.bashrc; then
	echo "will not re-usetup"
else
	echo "xmodmap "${hPath}"/rebindcaps" >> ~/.bashrc
	echo "bash "${hPath}"/disable-touchpad-if-mouse.sh" >> ~/.bashrc
	echo "#usetup complete" >> ~/.bashrc
	echo "clear" >> ~/.bashrc
	sudo ln ${hPath}/gdlinkformat /usr/bin/gdlinkformat
	bash ${hPath}/gitstore.sh
	echo "usetup complete"
fi
