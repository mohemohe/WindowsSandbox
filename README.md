# WindowsSandbox
起動時にいろいろインストールするやつ　vGPUも有効にするぞ

## 起動

1. [このリポジトリのzip](https://github.com/mohemohe/WindowsSandbox/archive/refs/heads/main.zip)をunzipして `C:\WindowsSandbox` に展開  
  もしくはPowerShellで以下のワンライナーを実行  
  ```
  $d = "$env:TEMP\WindowsSandbox"; $z = "$d.zip"; Invoke-WebRequest https://github.com/mohemohe/WindowsSandbox/archive/refs/heads/main.zip -Outfile $t; Expand-Archive -Path $t -DestinationPath $d; Move-Item -Path "$d\WindowsSandbox-main" -Destination "C:\WindowsSandbox"; Remove-Item $z,$d
  ```
2. `C:\WindowsSandbox\sandbox.wsb` を実行

## パッケージの追加・削除

[./shared/init.ps1](./shared/init.ps1)に[scoop](https://github.com/ScoopInstaller/Scoop)を使ってインストールしている部分があるので、そのあたりを弄る  

## Chrome拡張機能の追加・削除

[./shared/install_chrome_extensions.reg](./shared/install_chrome_extensions.reg)にレジストリ エントリを追加する  
やりかたは [Alternative extension installation methods - Using the Windows registry](https://developer.chrome.com/docs/extensions/mv3/external_extensions/#registry)を参照
