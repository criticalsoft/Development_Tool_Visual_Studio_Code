if [ -f "./_vscode.zip" ]; then
    rm -r ~/.vscode/
    unzip ./_vscode.zip -d ~/
fi




if [ -f "./Code.zip" ]; then
    rm -r ~/Library/Application\ Support/Code/
    unzip ./Code.zip -d ~/Library/Application\ Support/
fi




sync
echo SYNC




