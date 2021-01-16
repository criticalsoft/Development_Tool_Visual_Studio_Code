mkdir -p ~/VSCode/
cp ./VSC_UI_Transparent.css ~/VSCode/resources/app/
cp ./glasscord.asar ~/VSCode/resources/app/




#FIX: Window DoesNot Show Up
#Restore To Original Version First
sed -i "/\"main\"/c\"main\": \"./out/main\"," ~/VSCode/resources/app/package.json
cat ~/VSCode/resources/app/package.json |grep main

#https://github.com/AryToNeX/Glasscord/wiki/Installation
#You need to name it exactly like this. Glasscord will search for that specific filename in order to make your application start.
cp ~/VSCode/resources/app/package.json ~/VSCode/resources/app/package.original.json

sed -i "/\"main\"/c\"main\": \"./glasscord.asar\"," ~/VSCode/resources/app/package.json
cat ~/VSCode/resources/app/package.json |grep main




#~/.local/bin/code --install-extension be5invis.vscode-custom-css
~/.local/bin/code --install-extension ./be5invis.vscode-custom-css-*.vsix

killall code
#FIX: Reload Custom CSS and JS Needs Root Permission:
~/.local/bin/code ~/.config/Code/User/settings.json




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#getting-started
notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
\"vscode_custom_css.imports\": [\"file:///home/NAME/VSCode/resources/app/VSC_UI_Transparent.css\"],
"

notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
View -> Command Palette:
Reload Custom CSS and JS
"




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#special-note-if-visual-studio-code-complains-about-that-it-is-corrupted-simply-click-dont-show-again
notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
Code Installation Corrupt
Configure Notification: Don't show again
"



