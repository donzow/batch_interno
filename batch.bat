@echo off
echo ======= DEPTO.INFORMATICA =======
echo Copiando imagen
mkdir c:\tmp\
mkdir c:\img\
cd c:\img\
copy "\\10.10.10.10\tools\img\wallpaper.jpg" "c:\img\Wallpaper.jpg"
REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "c:\img\Wallpaper.jpg"
REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 2
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /V LocalAccountTokenFilterPolicy /T REG_DWORD /F /D "1"
%SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
echo Listo
echo ==== Escrito por donzow.tech =====
pause