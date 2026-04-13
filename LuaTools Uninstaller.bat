@echo off
title Desinstalador Completo Steam + LuaTools
color 0C

:: ================================
:: Verificar ADMIN
:: ================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Executando como administrador...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb runAs"
    exit
)

echo ================================
echo FECHANDO STEAM
echo ================================
taskkill /f /im steam.exe >nul 2>&1
timeout /t 2 >nul

:: ================================
:: DEFINIR CAMINHO STEAM
:: ================================
set STEAM_DIR=C:\Program Files (x86)\Steam

if not exist "%STEAM_DIR%" (
    echo Steam nao encontrada no caminho padrao!
    pause
    exit
)

echo ================================
echo REMOVENDO DADOS MODIFICADOS
echo ================================

rd /s /q "%STEAM_DIR%\appcache" 2>nul
rd /s /q "%STEAM_DIR%\config" 2>nul
rd /s /q "%STEAM_DIR%\userdata" 2>nul

echo Pastas removidas!

:: ================================
:: REMOVER LUATOOLS
:: ================================
echo ================================
echo REMOVENDO LUATOOLS
echo ================================

rd /s /q "%USERPROFILE%\LuaTools" 2>nul
rd /s /q "%APPDATA%\LuaTools" 2>nul
rd /s /q "%LOCALAPPDATA%\LuaTools" 2>nul

echo LuaTools removido!

:: ================================
:: MENU FINAL
:: ================================
:menu
cls
echo ================================
echo O QUE DESEJA FAZER COM A STEAM?
echo ================================
echo [1] EXCLUIR STEAM COMPLETAMENTE
echo [2] REINSTALAR STEAM
echo [3] MANTER STEAM
echo ================================

set /p escolha=Escolha uma opcao: 

if "%escolha%"=="1" goto deletar
if "%escolha%"=="2" goto reinstalar
if "%escolha%"=="3" goto manter

goto menu

:: ================================
:: DELETAR STEAM
:: ================================
:deletar
echo Excluindo Steam...
rd /s /q "%STEAM_DIR%"
echo Steam removida!
pause
exit

:: ================================
:: REINSTALAR STEAM
:: ================================
:reinstalar
echo Baixando instalador da Steam...

powershell -Command "Invoke-WebRequest -Uri https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe -OutFile %TEMP%\SteamSetup.exe"

echo Instalando...
start %TEMP%\SteamSetup.exe

pause
exit

:: ================================
:: MANTER STEAM
:: ================================
:manter
echo Steam mantida. Limpeza concluida!
pause
exit