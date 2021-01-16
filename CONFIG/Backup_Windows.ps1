#Global Variable FIX: Differrent Date Before & After 24:00:00
$DATE=(Get-Date).ToString("yyyyMMdd")




rm ./_vscode.zip
Compress-Archive -Path ~/.vscode/ -DestinationPath ./_vscode.zip


rm ./_vscode_$DATE.zip
cp ./_vscode.zip ./_vscode_$DATE.zip




#UseLess
rm -r ~/AppData/Roaming/Code/Cache/
rm -r ~/AppData/Roaming/Code/CachedData/

rm -r ~/AppData/Roaming/Code/User/workspaceStorage/
rm -r ~/AppData/Roaming/Code/logs/




rm ./Code.zip
Compress-Archive -Path ~/AppData/Roaming/Code/ -DestinationPath ./Code.zip

rm ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip



