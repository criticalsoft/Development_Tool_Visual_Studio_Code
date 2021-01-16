cp ./VSC_UI_Transparent.css ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/
cp ./glasscord.asar ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/




#FIX: Window DoesNot Show Up
#Restore To Original Version First
sed -i "" "s/\.\/glasscord.asar/\.\/out\/main/g" ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json
cat ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json |grep main

#https://github.com/AryToNeX/Glasscord/wiki/Installation
#You need to name it exactly like this. Glasscord will search for that specific filename in order to make your application start.
cp ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.original.json

sed -i "" "s/\.\/out\/main/\.\/glasscord.asar/g" ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json
cat ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/package.json |grep main




#~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension be5invis.vscode-custom-css
~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ./be5invis.vscode-custom-css-*.vsix

killall code
#FIX: Reload Custom CSS and JS Needs Root Permission:
~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Library/Application\ Support/Code/User/settings.json




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#getting-started
osascript -e 'display notification "
\"vscode_custom_css.imports\": [\"file:///Users/NAME/Applications/Visual Studio Code.app/Contents/Resources/app/VSC_UI_Transparent.css\",],
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



