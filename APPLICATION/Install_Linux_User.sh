#FOR: OffLine Install
#FOR: Install Everywhere (Linux Distro)
#FOR: Keep Same Version (Prevent Config Conflict)
tar xvzf ./code-stable-*.tar.gz --directory ~/
rm -r ~/VSCode/
mv ~/VSCode-*/ ~/VSCode/




#Add To User Path
mkdir -p ~/.local/bin/
ln -sf ~/VSCode/bin/code ~/.local/bin/code
whereis code
#ReLogIn




#FIX: Open Folder In New Window
#~/VSCode/bin/code Supports --install-extension --help Command Line Option, ~/VSCode/code DoesNot
tee ~/.local/share/applications/code.desktop << EOF
[Desktop Entry]
Name=Visual Studio Code User
#Need ReLogIn
#Exec=code --no-sandbox --unity-launch --new-window %F
Exec=/home/$USER/VSCode/bin/code --no-sandbox --unity-launch --new-window %F
Type=Application
Icon=com.visualstudio.code
EOF

#FIX: Pined TaskBar Icon
cp ~/VSCode/resources/app/resources/linux/code.png ~/.local/share/icons/com.visualstudio.code.png




#FIX:Visual Studio Code is unable to watch for file changes in this large workspace
cat /proc/sys/fs/inotify/max_user_watches
sudo tee --append /etc/sysctl.conf << EOF
fs.inotify.max_user_watches=524288
EOF
cat /proc/sys/fs/inotify/max_user_watches

notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
sudo reboot
"


