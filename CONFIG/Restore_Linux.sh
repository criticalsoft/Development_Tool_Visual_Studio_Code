if [ -f "./_vscode.zip" ]; then
    rm -r ~/.vscode/
    unzip ./_vscode.zip -d ~/
fi




if [ -f "./Code.zip" ]; then
    rm -r ~/.config/Code/
    unzip ./Code.zip -d ~/.config/
fi




sync
echo SYNC




