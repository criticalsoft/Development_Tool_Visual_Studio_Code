sudo cp ./VSC_UI_Transparent.css /usr/share/code/resources/app/
sudo cp ./glasscord.asar /usr/share/code/resources/app/




#FIX: Window DoesNot Show Up
#Restore To Original Version First
sudo sed -i "/\"main\"/c\"main\": \"./out/main\"," /usr/share/code/resources/app/package.json
cat /usr/share/code/resources/app/package.json |grep main

#https://github.com/AryToNeX/Glasscord/wiki/Installation
#You need to name it exactly like this. Glasscord will search for that specific filename in order to make your application start.
sudo cp /usr/share/code/resources/app/package.json /usr/share/code/resources/app/package.original.json

sudo sed -i "/\"main\"/c\"main\": \"./glasscord.asar\"," /usr/share/code/resources/app/package.json
cat /usr/share/code/resources/app/package.json |grep main




#/usr/bin/code --install-extension be5invis.vscode-custom-css
/usr/bin/code --install-extension ./be5invis.vscode-custom-css-*.vsix

sudo killall code
#Run Visual Studio Code With Admin Permission (Custom CSS and JS Loader - Reload):
sudo /usr/bin/code --no-sandbox --user-data-dir ~/.config/Code/ --extensions-dir ~/.vscode/extensions/ ~/.config/Code/User/settings.json




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#getting-started
notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
\"vscode_custom_css.imports\": [\"file:///usr/share/code/resources/app/VSC_UI_Transparent.css\"],
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




#FIX: Need Root Permission When BackUp / Restore Config (Write Protected File) (zip warning: Not all files were readable)
#Because Runed As Root Above
sudo chown -R $USER:$USER ~/.config/Code/
sudo chmod -R 750 ~/.config/Code/

sudo chown -R $USER:$USER ~/.vscode/
sudo chmod -R 750 ~/.vscode/




#FOR: Extract GlassCord asar File
#sudo npm install -g asar

#Use:
#npx asar extract ./glasscord.asar ./glasscord/



