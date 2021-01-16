if (Test-Path ./_vscode.zip) {
    rm -r ~/.vscode/
    Expand-Archive -Path ./_vscode.zip -DestinationPath ~/
}


if (Test-Path ./Code.zip) {
    rm -r ~/AppData/Roaming/Code/
    Expand-Archive -Path ./Code.zip -DestinationPath ~/AppData/Roaming/
}


