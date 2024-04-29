@echo off
::Criado por Rodrigo Albuquerque 
mode con: cols=100 lines=35
title CHDMAN CONVERT v1.1
color 1f    
::Se não existir o arquivo chdman.exe dentro do diretório o script será fechado!!! 
echo.
if not EXIST chdman.exe (
  echo -Arquivo chdman.exe ausente, pressione qualquer tecla para sair...
  pause > nul 
  exit
)   
:inicio
cls
echo.
echo                                                                _
echo                                                                U 
echo                                                 ,---.          :
echo                                                ;     \         ;
echo                                            .==\"/==.  '-.___.-'
echo                                           ((+) .  .:)
echo                                           ^|`.-(o)-.'^|
echo                                           \/  \_/  \/
echo                                     +---------------------+
echo                                     ^| CHDMAN CONVERT v1.1 ^|
echo                                     +---------------------+
echo.
echo                                 +----------------------------+
echo                                 ^| 1 Converter .ISO Para .CHD ^|
echo                                 +----------------------------+
echo                                 ^| 2 Converter .CUE para .CHD ^|
echo                                 +----------------------------+
echo                                 ^| 3 Converter .GDI para .CHD ^|
echo                                 +----------------------------+
echo                                 ^| 4 Sair                     ^|
echo                                 +----------------------------+
choice /c "1234" /n /m "-Digite> "
goto %errorlevel%
::Choice laços for
:1
for /r %%a in (*iso) do (
  chdman createcd -i "%%a" -o "%%~na.chd"
)
  goto inicio
:2
for /r %%a in (*CUE) do (
  chdman createcd -i "%%a" -o "%%~na.chd"
)
  goto inicio
:3
for /r %%a in (*GDI) do (
  chdman createcd -i "%%a" -o "%%~na.chd"
)
  goto inicio
:4
exit
pause >nul
