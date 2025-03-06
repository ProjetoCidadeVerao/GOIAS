@echo off

echo ===-------------------------------------===
echo     	[GOIAS]
echo ===-------------------------------------===

echo Limpando cache...
rd /s /q "cache"

timeout 1

start C:\Users\Administrator\Desktop\GOIAS\BUILDS\FXServer.exe +exec server.cfg +set onesync_enableInfinity 1 +set sv_enforceGameBuild 3095

exit
