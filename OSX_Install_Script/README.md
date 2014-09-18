OSX_Install_Script
===

installer.sh is a simple script that allows for quick installing of a few OSX applications.
Currently it will install:
* [Sublime Text 3 - DMG](http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg)
* [Spotify - ZIP](http://download.spotify.com/SpotifyInstaller.zip)
* [Skype - DMG](http://download.skype.com/macosx/Skype_6.19.0.452.dmg)
* [Alfred 2 - ZIP](https://cachefly.alfredapp.com/Alfred_2.4_279.zip)
* [Google Chrome - DMG](https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg)

I don't want to run the risk of legal issues for including the downloaded `.dmg` and `.zip` files I use (minus the Sublime Text icons). To fetch them, use the links above to find the relevant `.dmg` and `.zip` files.

The Sublime Text icon was fetched from [here](https://dribbble.com/shots/1069298-Sublime-Text-Icon-Redux).

I will mention that in the `/SublimeInstall` folder there are a few files, namely a text file that contains the intstall code for Package Manager, a `.json` file that contains my Sublime settings, a guide to changing the Sublime Icon and the Sublime Icon `.zip` file.

`/unzip` is simply a directory that on unzip the files get extracted to.

ToDo
===
* I, at somepoint, aim to either turn this into a python script to make things a lot easier or set up a way to fetch the files from their relevent web areas.
* Make the script less crap
* Make it easier to add more packages