# Deck-Arch-Utils
Utilities to work with SteamDeck's desktop mode, esp with external monitors. Scripts are made for arch so should work on any system running arch.

## Follow these steps:
1. Set a password for your user in system settings. This is required to ensure you can invoke any scripts needing sudo to execute.
2. Clone the repo within `/home/deck`
3. `cd /home/deck/Deck-Arch-Utils/`
4. Move over all scripts to source dir. This will make it easier to invoke + the wayt steam uodates leaves this dir unaffected. `cp * ..`
5. Grant execute access to all by using `sudo chmod +x *.sh` [enter your password when prompted].
5. Run `./run_post_steamos_update.sh` after each steam-os install/update. You will know to run this in case you get any errors trying to run the other scripts.
6. Make sure to place all scripts in the same dir as explained in point 4. since some of these reference each-other.
7. Sometimes, using the UI to unzip a large file(eg: game) throws a storage exception. This can be confusing since users may see enough storage available in their target dir. (eg: SD card). This does not necessarily mean that you have a damaged SD card(though you may), it is a bug with the way Ark(the default zip tool) interfaces with arch. To overcome this, use `./zip-cmd.sh _source-path__ __target-path__`
8. Always run a test when using a new SD card to validate it has the storage the system shows it does. There are utils for this but the easiest way is to copy over a large file/files to fill it up, then delete those files to reclaim space, at least in theory.
<br> Or you can use the utility f3. I have provided a script to make this simple for you. Simply run `./verify_sd_card.sh` and let it do it's thing.

## Common Errors:
1. `./set_brightness.sh _val_` returns `ls: cannot access /dev/i2c-*: No such file or directory`. 
<br><i>Reason: </i>
This happening likely because the monitor config has not been loaded yet. 2 common reasons: In case steam os has been updated, steam will wipe any custom scripts or configs not under `/home`, it's just the way SteamDeck updates. Well, under the hood it isn't as much an update as it is a new flash.
<br><i>Fix: </i> 
In case of a system update, you need to run `./run_post_steamos_update.sh` first.
<br> Else, you can just try running `./get_brightness.sh` first before trying to set brightness.

## Common Issues:
1. On downloading apps such as Spotify, you may notice taht you are not able to sign in with 3p providers like Facebook. 
<br><i>Reason: </i>
This due to a session cookie not being set properly and the link being unable to open in your browser.
<br><i>Fix: </i>
Run `./enable_login_with_3ps.sh` and now try to sign in, it should work this time.

<b> I will keep this repo updated for the benefit of the community as I create more utilities to make life easier. Feel free to star/follow this repo so you get notified of any updates I make.
