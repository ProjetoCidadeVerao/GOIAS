@echo off
echo Iniciando o bot...

:: Verifica se o Node.js está instalado
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo O Node.js não está instalado. Por favor, instale-o em https://nodejs.org e tente novamente.
    pause
    exit /b
)

:: Inicia o bot executando o bot.js
pm2 start index.js --name upload-telefone

if %errorlevel% equ 0 (
    echo Bot encerrado.
) else (
    echo Ocorreu um erro ao iniciar o bot. Verifique os erros acima.
)

pause
