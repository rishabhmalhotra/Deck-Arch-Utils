# Deck-Arch-Utils
Utilities to work with SteamDeck's desktop mode, esp with external monitors. Scripts are made for arch so should work on any system running arch.

## Follow these steps:
1. Set a password for your user in system settings. This is required to ensure you can invoke any scripts needing sudo to execute.
2. Clone the repo within `/home/deck`
3. `cd /home/deck/Deck-Arch-Utils/`
4. Move over all scripts to source dir. This will make it easier to invoke + the wayt steam uodates leaves this dir unaffected. `cp * ..`
5. Run `./run_post_steamos_update.sh` after each steam-os install/update. You will know to run this in case you get any errors trying to run the other scripts.
6. Make sure to place all scripts in the same dir as explained in point 4. since some of these reference each-other.
7. Sometimes, using the UI to unzip a large file(eg: game) throws a storage exception. This can be confusing since users may see enough storage available in their target dir. (eg: SD card). This does not necessarily mean that you have a damaged SD card(though you may), it is a bug with the way Ark(the default zip tool) interfaces with arch. To overcome this, use `./zip-cmd.sh _source-path__ __target-path__`
8. Always run a test when using a new SD card to validate it has the storage the system shows it does. There are utils for this but the easiest way is to copy over a large file/files to fill it up, then delete those files to reclaim space.

<b> I will keep this repo updated for the benefit of the community as I create more utilities to make life easier. Feel free to star/follow this repo so you get notified of any updates I make.
