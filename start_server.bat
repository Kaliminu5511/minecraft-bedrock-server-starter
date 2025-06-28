@echo off
:menu
cls
echo ==============================
echo Minecraft Bedrock Server Menü
echo ==============================
echo 1) Server starten
echo 2) Server stoppen
echo 3) Einladungscode anzeigen
echo 4) Beenden
echo ==============================
set /p option=Wähle eine Option [1-4]: 

if "%option%"=="1" goto start_server
if "%option%"=="2" goto stop_server
if "%option%"=="3" goto show_invite
if "%option%"=="4" goto exit_menu
echo Ungültige Option. Bitte wähle eine Zahl zwischen 1 und 4.
pause
goto menu

:start_server
echo 🟢 Starte Server...
start "" bedrock_server.exe
echo ✅ Server gestartet.
pause
goto menu

:stop_server
echo 🛑 Beende Server (falls aktiv)...
taskkill /IM bedrock_server.exe /F > nul
echo ✅ Server gestoppt.
pause
goto menu

:show_invite
echo 📢 Einladungscode wird angezeigt...
echo Hier könnte der Einladungscode stehen (z.B. aus einer Datei auslesen).
pause
goto menu

:exit_menu
echo 👋 Beenden des Menüs. Tschüss!
exit