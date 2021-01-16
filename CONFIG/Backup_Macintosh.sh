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
rm -r ~/Library/Application\ Support/Code/Cache/
rm -r ~/Library/Application\ Support/Code/CachedData/

rm -r ~/Library/Application\ Support/Code/User/workspaceStorage/
rm -r ~/Library/Application\ Support/Code/logs/




rm ./Code.zip

cd ~/Library/Application\ Support/
zip ./Code.zip -r ./Code/
cd -
mv ~/Library/Application\ Support/Code.zip ./

rm ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip




sync
echo SYNC



