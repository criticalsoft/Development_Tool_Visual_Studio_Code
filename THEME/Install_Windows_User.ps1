cp './VSC_UI_Transparent.css' '~\AppData\Local\Programs\Microsoft VS Code\resources\app\'
cp 'glasscord.asar' '~\AppData\Local\Programs\Microsoft VS Code\resources\app\'




#FIX: Window DoesNot Show Up
#Restore To Original Version First
(Get-Content '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json') -replace './glasscord.asar', './out/main' | Set-Content '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json'
cat '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json' | Select-String main

#https://github.com/AryToNeX/Glasscord/wiki/Installation
#You need to name it exactly like this. Glasscord will search for that specific filename in order to make your application start.
cp '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json' '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.original.json'

(Get-Content '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json') -replace './out/main', './glasscord.asar' | Set-Content '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json'
cat '~\AppData\Local\Programs\Microsoft VS Code\resources\app\package.json' | Select-String main




taskkill /IM "Code.exe" /f

#& '~\AppData\Local\Programs\Microsoft VS Code\bin\code' --install-extension be5invis.vscode-custom-css
& '~\AppData\Local\Programs\Microsoft VS Code\bin\code' --install-extension (Get-ChildItem ./be5invis.vscode-custom-css-*.vsix)

#FIX: Reload Custom CSS and JS Needs Root Permission:
& '~\AppData\Local\Programs\Microsoft VS Code\bin\code' %USERPROFILE%/AppData/Roaming/Code/User/settings.json




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#getting-started
Add-Type -AssemblyName System.Windows.Forms
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Visible = $true
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Process -id $pid).Path)
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning
$balloon.BalloonTipTitle = 'Visual Studio Code'
$balloon.BalloonTipText = '
"vscode_custom_css.imports": ["file://C:\\Users\\NAME\\AppData\\Local\\Programs\\Microsoft VS Code\\resources\\app\\VSC_UI_Transparent.css"],
'
$balloon.ShowBalloonTip(0)

Add-Type -AssemblyName System.Windows.Forms
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Visible = $true
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Process -id $pid).Path)
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning
$balloon.BalloonTipTitle = "Visual Studio Code"
$balloon.BalloonTipText = "
View -> Command Palette:
Reload Custom CSS and JS
"
$balloon.ShowBalloonTip(0)




#https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css#special-note-if-visual-studio-code-complains-about-that-it-is-corrupted-simply-click-dont-show-again
Add-Type -AssemblyName System.Windows.Forms
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Visible = $true
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Process -id $pid).Path)
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning
$balloon.BalloonTipTitle = "Visual Studio Code"
$balloon.BalloonTipText = "
Code Installation Corrupt
Configure Notification: Don't show again
"
$balloon.ShowBalloonTip(0)



