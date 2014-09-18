#!/bin/bash

BASEDIR=$(dirname $0)

# Lets create some temp folders to hold things in
mkdir $BASEDIR/apps/unzip
mkdir $BASEDIR/apps/unzip/sublime_icons
mkdir /Applications/SublimeTextCustomIcons

# Unzip! Unzip my pretties
unzip $BASEDIR/apps/Alfred_2.3_264.zip -d $BASEDIR/apps/unzip
unzip $BASEDIR/apps/SpotifyInstaller.zip -d $BASEDIR/apps/unzip
unzip $BASEDIR/apps/SublimeInstall/Sublime_Text_Icon.zip -d $BASEDIR/apps/unzip/sublime_icons

# Mount ALL THE THING
hdiutil mount $BASEDIR/apps/googlechrome.dmg
hdiutil mount $BASEDIR/apps/SublimeInstall/Sublime_Text_Build_3059.dmg
hdiutil mount $BASEDIR /apps/Skype_6.19.0.442.dmg

# Copy the .app files to the /Applications folder
sudo cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
sudo cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
sudo cp -R "$BASEDIR/apps/unzip/Alfred 2.app" /Applications
sudo cp -R $BASEDIR/apps/unzip/sublime_icons /Applications/SublimeTextCustomIcons

# Unmount time!
cd ~
hdiutil unmount "/Volumes/Google Chrome/"
hdiutil unmount "/Volumes/Skype/"
hdiutil unmount "/Volumes/Sublime Text/"

# Remove the temp folder we made
rm -rf $BASEDIR/apps/unzip

echo "Have a good day!"