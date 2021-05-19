#!/bin/bash
#FXPAK PRO TO MISTER COPY SCRIPT
mister_saves="/media/fat/saves/SNES/"
fxpak_saves="/media/fat/sd2snes/saves/"

source=$fxpak_saves
destination=$mister_saves

# Make backup folder for MiSTer saves to protect from easy overwrites.
if [ ! -e "$destination/backup" ]
then
	mkdir -p "$destination/backup"
fi

cd $source
for i in *.srm
do
	oldname="$i"
	newname="${oldname/.srm/.sav}"
	if [ -e "$destination/$newname" ]; then echo "Backing up $newname before updating..."; cp "$destination/$newname" "$destination/backup/$newname"; fi
	cp -v "$oldname" "$destination/$newname"
done
