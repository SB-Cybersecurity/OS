@echo off
set MYDIR=%cd%

docker build buildenv -t myos-buildenv

docker run --rm -it -v "%MYDIR%:/root/env" myos-buildenv bash -c "cd /root/env && make build-x86_64 && exit"

:wait_for_iso
if exist "%MYDIR%\dist\x86_64\kernel.iso" (
    echo ISO erstellt, beende build.bat...
    goto exit
) else (
    timeout /t 2 /nobreak > nul
    goto wait_for_iso
)

:exit
cls
exit