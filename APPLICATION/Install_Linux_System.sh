#https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ./microsoft.gpg
#FOR:Find VSCode Package
sudo cp ./microsoft.gpg /etc/apt/trusted.gpg.d/
#FIX:The following signatures couldn't be verified because the public key is not available
#sudo chmod 755 /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update




#Package Version (Install_Repo.sh) Is FOR: Automatically Update With System
sudo apt install -y code
whereis code




#FIX: Open Folder In New Window
sudo tee /usr/share/applications/code.desktop << EOF
[Desktop Entry]
Name=Visual Studio Code System
Exec=code --no-sandbox --unity-launch --new-window %F
Type=Application
Icon=com.visualstudio.code
EOF

#FIX: Pined TaskBar Icon
sudo cp /usr/share/code/resources/app/resources/linux/code.png /usr/share/icons/com.visualstudio.code.png




#FIX:Visual Studio Code is unable to watch for file changes in this large workspace
cat /proc/sys/fs/inotify/max_user_watches
sudo tee --append /etc/sysctl.conf << EOF
fs.inotify.max_user_watches=524288
EOF
cat /proc/sys/fs/inotify/max_user_watches

notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
sudo reboot
"



