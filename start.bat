@echo off
start build.bat
timeout /t 4 /nobreak > nul
set PATH=C:\msys64\mingw64\bin;%PATH%
qemu-system-x86_64 -cdrom "C:\Users\sebas\Desktop\Tools\tools test\myos\dist\x86_64\kernel.iso" -m 512