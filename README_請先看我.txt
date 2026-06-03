維尼線上服務中心｜VS Code + CMD 上傳包

資料夾內容：
1. index.html
   你的網站主程式碼。請用 Visual Studio Code 開啟修改。

2. 01_open_with_vscode.bat
   點兩下即可用 VS Code 開啟整個資料夾。

3. 02_upload_to_github.bat
   點兩下即可用 CMD 上傳到 GitHub。

4. 00_先開VSCode再上傳_說明.bat
   操作順序提醒。

操作流程：

第一步：
把整個資料夾解壓縮到桌面。

第二步：
點兩下：
01_open_with_vscode.bat

第三步：
VS Code 開啟後，你可以修改 index.html。
修改後記得按：
Ctrl + S

第四步：
先到 GitHub 建立 Repository：
winnie-service-center

設定：
Public
不要勾 README

第五步：
回到資料夾，點兩下：
02_upload_to_github.bat

第六步：
到 GitHub 專案開啟 Pages：
Settings
Pages
Branch 選 main
資料夾選 /root
Save

成功網址：
https://q23361117.github.io/winnie-service-center/

LIFF 端點 URL：
https://q23361117.github.io/winnie-service-center/

功能分頁：
立即叫車：
https://q23361117.github.io/winnie-service-center/#ride

機場接送：
https://q23361117.github.io/winnie-service-center/#airport

司機應徵：
https://q23361117.github.io/winnie-service-center/#driver

車資試算：
目前首頁點車資試算會連到：
https://q23361117.github.io/fare/

注意：
如果 01_open_with_vscode.bat 顯示找不到 code 指令，代表 VS Code 沒有加入 PATH。
你可以直接用 VS Code 手動開啟這個資料夾，也可以重新安裝 VS Code 並勾選 Add to PATH。

如果 02_upload_to_github.bat 顯示找不到 git，請先安裝 Git for Windows。
