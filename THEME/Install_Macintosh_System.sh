sudo cp ./VSC_UI_Transparent.css /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/
sudo cp ./glasscord.asar /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/




#FIX: Window DoesNot Show Up
#Restore To Original Version First
sudo sed -i "" "s/\.\/glasscord.asar/\.\/out\/main/g" /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json
cat /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json |grep main

#https://github.com/AryToNeX/Glasscord/wiki/Installation
#You need to name it exactly like this. Glasscord will search for that specific filename in order to make your application start.
sudo cp /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.original.json

sudo sed -i "" "s/\.\/out\/main/\.\/glasscord.asar/g" /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json
cat /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json |grep main




#/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension be5invis.vscode-custom-css
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ./be5invis.vscode-custom-css-*.vsix

sudo killall code
#Run Visual Studio Code With Admin Permission (Custom CSS and JS Loader - Reload):
sudo /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --no-sandbox --user-data-dir ~/Library/Application\ Support/Code/ --extensions-dir ~/.vscode/extensions/ ~/Library/Application\ Support/Code/User/settings.json




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#getting-started
osascript -e 'display notification "
\"vscode_custom_css.imports\": [\"file:///Applications/Visual Studio Code.app/Contents/Resources/app/VSC_UI_Transparent.css\",],
" with title "Visual Studio Code"'

osascript -e 'display notification "
View -> Command Palette:
Reload Custom CSS and JS
" with title "Visual Studio Code"'




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#special-note-if-visual-studio-code-complains-about-that-it-is-corrupted-simply-click-dont-show-again
osascript -e 'display notification "
Code Installation Corrupt
Configure Notification: Donot show again
" with title "Visual Studio Code"'




#FIX: Need Root Permission When BackUp / Restore Config (Write Protected File) (zip warning: Not all files were readable)
#Because Runed As Root Above
sudo chown -R $USER:Admin ~/Library/Application\ Support/Code/
sudo chmod -R 750 ~/Library/Application\ Support/Code/

sudo chown -R $USER:Admin ~/.vscode/
sudo chmod -R 750 ~/.vscode/




#FOR: Extract GlassCord asar File
#sudo npm install -g asar

#Use:
#npx asar extract ./glasscord.asar ./glasscord/



