@echo off
echo Instalando as dependências do projeto...

:: Verifica se o Node.js está instalado
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo O Node.js não está instalado. Por favor, instale-o em https://nodejs.org e tente novamente.
    pause
    exit /b
)

:: Cria o package.json caso não exista
if not exist package.json (
    echo Criando package.json...
    npm init -y
)

:: Instala as dependências necessárias
echo Instalando dependências: express, multer, sharp, fs, path, axios...
npm install express multer sharp fs path axios

if %errorlevel% equ 0 (
    echo Dependências instaladas com sucesso.
) else (
    echo Ocorreu um erro ao instalar as dependências. Verifique os erros acima.
    pause
    exit /b
)

:: Instala o PM2 globalmente
echo Instalando PM2 globalmente...
npm install -g pm2

if %errorlevel% equ 0 (
    echo PM2 instalado globalmente com sucesso.
) else (
    echo Ocorreu um erro ao instalar o PM2. Verifique os erros acima.
)

pause
