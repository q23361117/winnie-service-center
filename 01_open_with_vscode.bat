@echo off
chcp 65001 >nul
echo.
echo ==========================================
echo   維尼線上服務中心｜用 VS Code 開啟
echo ==========================================
echo.

where code >nul 2>&1
if errorlevel 1 (
  echo 找不到 Visual Studio Code 的 code 指令。
  echo.
  echo 請先開啟 VS Code：
  echo 1. 按 Ctrl + Shift + P
  echo 2. 搜尋 Shell Command
  echo 3. 選 Install 'code' command in PATH
  echo.
  echo 如果你是 Windows 版 VS Code，通常重新安裝並勾選 Add to PATH 也可以。
  echo.
  pause
  exit /b
)

code .
echo 已用 VS Code 開啟目前資料夾。
echo.
pause
