cd $PSScriptRoot

regedit.exe /S .\install_chrome_extensions.reg

iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

scoop install aria2
scoop install git
scoop bucket add extras
scoop install googlechrome
scoop install vscode
scoop install hex-editor-neo
scoop install cheat-engine
