# mister2fxpak
Super simple MiSTer scripts for converting back and forth between MiSTer and FXPAK Pro names/folders.
This script is intended to be run directly on MiSTer after copying to the Scripts folder of your SD card.
They will probably throw errors running on other Linux or Unix machines if you run them without modification.

mister2fxpak.sh will copy your MiSTer saves to a save folder expected by sd2snes or fxpak Pro.
fxpak2mister.sh will do the reverse. Simple enough!

Both scripts will create a backup folder in the destination platform's save folder and, if there's already an existing save,
it will copy that existing save to the backup folder before writing the new one.

Hopefully this will help you avoid accidentally overwriting your save files if you run the wrong script.
Just make sure you don't run either of the scripts twice in a row!

Please note: I cannot take any responsibility if you still manage to accidentally overwrite save files with these tools!

I strongly recommend you back up your save files to your PC or elsewhere before messing around with them.
