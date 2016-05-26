#!/bin/bash

mkdir ~/getmacapps_temp
cd ~/getmacapps_temp

# Installing Chrome
echo "Installing Chrome"
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg

# Installing Firefox
echo "Installing Firefox"
curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount -nobrowse Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm Firefox.dmg

# Installing Opera
echo "Installing Opera"
curl -L -o Opera.dmg "http://www.opera.com/download/get/?id=39138&location=399&nothanks=yes&sub=marine"
yes | hdiutil mount -nobrowse Opera.dmg > /dev/null
cp -R "/Volumes/Opera/Opera.app" /Applications
hdiutil unmount "/Volumes/Opera"
rm Opera.dmg

# Installing Spotify
echo "Installing Spotify"
curl -L -O "http://download.spotify.com/Spotify.dmg"
hdiutil mount -nobrowse Spotify.dmg
cp -R "/Volumes/Spotify/Spotify.app" /Applications
hdiutil unmount "/Volumes/Spotify"
rm Spotify.dmg

# Installing Dropbox
echo "Installing Dropbox"
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac"
hdiutil mount -nobrowse Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
rm Dropbox.dmg

# Installing Sublime Text 3 Beta
echo "Installing Sublime Text 3 Beta"
curl -L -o "Sublime Text 3.dmg" "https://download.sublimetext.com/Sublime%20Text%20Build%203103.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"

# Installing Sublime Text 2
echo "Installing Sublime Text 2"
curl -L -o "Sublime Text 2.0.2.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"
hdiutil mount -nobrowse "Sublime Text 2.0.2.dmg"
cp -R "/Volumes/Sublime Text 2/Sublime Text 2.app" /Applications
hdiutil unmount "/Volumes/Sublime Text 2/Sublime Text 2.app"
rm "Sublime Text 2.0.2.dmg"

# Installing iTerm2
echo "Installing iTerm2"
curl -L -o iTerm2.zip "https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip"
unzip iTerm2.zip
mv iTerm.app /Applications
rm iTerm2.zip

# Installing Sequel Pro
echo "Installing Sequel Pro"
curl -L -o sequel-pro.dmg "https://github.com/sequelpro/sequelpro/releases/download/1.1.0.1/sequel-pro-1.1.0.1.dmg"
hdiutil mount -nobrowse sequel-pro.dmg
cp -R "/Volumes/Sequel Pro 1.1.0.1/Sequel Pro.app" /Applications
hdiutil unmount "/Volumes/Sequel Pro 1.1.0.1"
rm sequel-pro.dmg

# Installing Source Tree
echo "Installing Source Tree"
curl -L -o SourceTree.dmg "http://downloads.atlassian.com/software/sourcetree/SourceTree_2.2.dmg"
hdiutil mount -nobrowse SourceTree.dmg
cp -R "/Volumes/SourceTree/SourceTree.app" /Applications
hdiutil unmount "/Volumes/SourceTree"
rm SourceTree.dmg

# Installing FileZilla
echo "Installing FileZilla"
curl -L -o Filezilla.app.tar.bz2 "http://sourceforge.net/projects/filezilla/files/FileZilla_Client/3.15.0.2/FileZilla_3.15.0.2_macosx-x86.app.tar.bz2"
tar -zxvf Filezilla.app.tar.bz2
mv FileZilla.app /Applications
rm Filezilla.app.tar.bz2

# Installing GitHub
echo "Installing GitHub"
curl -L -o mac_GitHub.zip "https://central.github.com/mac/latest"
unzip mac_GitHub.zip
mv GitHub.app /Applications
rm mac_GitHub.zip

# Installing CodeKit
echo "Installing CodeKit"
curl -L -o codekit.zip "http://incident57.com/codekit/files/codekit-19115.zip"
unzip codekit.zip
mv "CodeKit.app" /Applications
rm codekit.zip

# Installing Alfred
echo "Installing Alfred"
curl -L -o Alfred.zip "https://cachefly.alfredapp.com/Alfred_2.8.2_432.zip"
unzip Alfred.zip
mv "Alfred 2.app" /Applications
rm Alfred.zip

# Installing Dash
echo "Installing Dash"
curl -L -o Dash.zip "https://london.kapeli.com/downloads/v3/Dash.zip"
unzip Dash.zip
mv "Dash.app" /Applications
rm Dash.zip

# Installing Mou
echo "Installing Mou"
curl -L -o Mou.zip "http://25.io/mou/download/Mou.zip"
unzip Mou.zip
mv "Mou.app" /Applications
rm Mou.zip

# Installing Slack
echo "Installing Slack"
curl -L -o Slack.zip "https://downloads.slack-edge.com/mac_public_releases/slack-2.0.2.zip"
unzip Slack.zip
mv "Slack.app" /Applications
rm Slack.zip

# Installing MacVim
echo "Installing MacVim"
curl -L -o MacVim.dmg "https://github-cloud.s3.amazonaws.com/releases/5641441/67528bbe-1bb2-11e6-9e07-57a270fd5185.dmg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20160526%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20160526T162424Z&X-Amz-Expires=300&X-Amz-Signature=4b19ac41e8a427db3d3d3b31f702edf985bc4e893be97b4b2889a10ccf65e4a1&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B%20filename%3DMacVim.dmg&response-content-type=application%2Foctet-stream"
hdiutil mount -nobrowse MacVim.dmg
cp -R "/Volumes/MacVim/MacVim.app" /Applications
hdiutil unmount "/Volumes/MacVim"
rm MacVim.dmg

echo "Have a nice day!"