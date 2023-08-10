@echo off
:menu
cls
echo REVERSE SHELL
echo -------------------
echo 1. Instalar requisitos
echo 2. Configurar reverse shell
echo 3. Salir
echo -------------------
set /p choice=Seleccione una opcion: 

if "%choice%"=="1" (
    echo Instalando requisitos...
    pip install pyinstaller
    pip install auto-py-to-exe
    echo Requisitos instalados correctamente.
    pause
    goto menu
) else if "%choice%"=="2" (
    echo Abriendo Visual Studio Code...
    start code
    pause
    auto-py-to-exe
    goto menu
) else if "%choice%"=="3" (
    echo Saliendo...
    exit
) else (
    echo Opción no valida. Por favor, seleccione una opcion valida.
    pause
    goto menu
)