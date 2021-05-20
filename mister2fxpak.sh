#!/bin/bash
#MISTER TO FXPAK PRO SAVE CONVERSION SCRIPT
mister_saves="/media/fat/saves/SNES/"
fxpak_saves="/media/fat/sd2snes/saves/"

source=$mister_saves
destination=$fxpak_saves

cd $source
if [ ! -e *.sav ]
then
	echo "ERROR: No save files found in $source"
	echo "Did you mean to run the other script?"
	exit
fi

# Make backup folder for sd2snes saves to protect from easy overwrites.
if [ ! -e "$destination/backup" ]
then
	mkdir -p "$destination/backup"
fi

for i in *.sav
do
	oldname="$i"
	newname="${oldname/.sav/.srm}"
	if [ -e "$destination/$newname" ]; then echo "Backing up $newname before updating..."; cp "$destination/$newname" "$destination/backup/$newname"; fi
	mv -v "$oldname" "$destination/$newname"
done
