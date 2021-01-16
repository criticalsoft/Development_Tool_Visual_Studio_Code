#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm ./_vscode.zip

cd ~/
zip ./_vscode.zip -r ./.vscode/
cd -
mv ~/_vscode.zip ./

rm ./_vscode_$DATE.zip
cp ./_vscode.zip ./_vscode_$DATE.zip




#UseLess
rm -r ~/.config/Code/Cache/
rm -r ~/.config/Code/CachedData/

rm -r ~/.config/Code/User/workspaceStorage/
rm -r ~/.config/Code/logs/




rm ./Code.zip

cd ~/.config/
zip ./Code.zip -r ./Code/
cd -
mv ~/.config/Code.zip ./

rm ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip




sync
echo SYNC



