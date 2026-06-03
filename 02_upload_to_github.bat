@echo off
chcp 65001 >nul
echo.
echo ==========================================
echo   維尼線上服務中心｜CMD 上傳 GitHub Pages
echo ==========================================
echo.

set REPO_NAME=winnie-service-center
set REPO_URL=https://github.com/q23361117/%REPO_NAME%.git

echo 準備上傳到：
echo %REPO_URL%
echo.
echo 請先確認你已經在 GitHub 建立 Repository：
echo %REPO_NAME%
echo.
echo 建議設定：
echo - Public
echo - 不要勾 README
echo.
pause

git --version >nul 2>&1
if errorlevel 1 (
  echo.
  echo 找不到 git 指令。
  echo 請先安裝 Git for Windows：
  echo https://git-scm.com/download/win
  echo 安裝完成後，關掉 CMD 再重新開啟。
  echo.
  pause
  exit /b
)

if not exist index.html (
  echo.
  echo 找不到 index.html
  echo 請確認這個 .bat 檔跟 index.html 在同一個資料夾。
  echo.
  pause
  exit /b
)

if not exist .git (
  echo.
  echo 初始化 Git...
  git init
)

echo.
echo 加入檔案...
git add .

echo.
echo 建立版本...
git commit -m "upload winnie service center"

echo.
echo 設定 main 分支...
git branch -M main

echo.
echo 設定遠端 GitHub Repository...
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%

echo.
echo 開始上傳...
git push -u origin main

echo.
echo ==========================================
echo 如果上方沒有紅字錯誤，代表上傳完成。
echo.
echo 接下來請到 GitHub 專案：
echo https://github.com/q23361117/%REPO_NAME%
echo.
echo 然後開啟 GitHub Pages：
echo Settings ^> Pages ^> Branch 選 main ^> /root ^> Save
echo.
echo 上線網址：
echo https://q23361117.github.io/%REPO_NAME%/
echo.
echo LIFF 端點 URL 請填：
echo https://q23361117.github.io/%REPO_NAME%/
echo ==========================================
echo.
pause
