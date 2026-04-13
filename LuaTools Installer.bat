@echo off

:: Verifica se está como admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Executando como administrador...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb runAs"
    exit
)

echo ================================
echo Instalando LuaTools (Parte 1)
echo ================================

powershell -NoProfile -ExecutionPolicy Bypass -Command "irm steam.run | iex"

echo.
echo Parte 1 concluida!
timeout /t 2 >nul

echo ================================
echo Instalando Plugin (Parte 2)
echo ================================

powershell -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb \"https://luatools.vercel.app/install-plugin.ps1\" | iex"

echo.
echo Instalacao finalizada!
pause