@echo off
:: Variables De Configuraciones
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~>
chcp 65001
set "ver=v1"
set "by=craciu25_YT"
set "masapps=https://sites.google.com/view/teamdevelopers"
set "github=https://github.com/AuchenDevs"
set "githubc=https://github.com/craciu25yt"
set "ultac=1/1/22"
set "stable=No info"

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~>
cls
:: Inicio Sin Administrador...
REM ~~~~~~~~~~~~~~~~~~~~~~~~>
net session >NUL 2>&1
IF %ERRORLEVEL% EQU 0 ( SET USERSTATUS=Administrator) else (
color 4
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
echo.
echo Tienes que ejecutar este programa como administrador!
echo.
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
timeout 4 >null 
exit
)
cls
REM ~~~~~~~~~~~~~~~~~~~~~~~~
:menu
cls
color b
title Open Ports - By craciu25_YT
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                          [Open Ports - By craciu25_YT ]                      )
echo                                                                              )
echo                              [ Elija Una Opcion ]                            )
echo                                                                              )
echo                                                                              )
echo     [1]. Abrir puertos ..                                                    )
echo                                                                              )
echo     [2]. Cerrar puertos ..                                                   )
echo                                                                              )
echo     [3]. APPInfo ..                                                          )
echo                                                                              )
echo     [4]. Cerrar La Script ..                                                 )
echo                                                                              )
echo _____________________________________________________________________________)
set/p craciu=Elija Una Opcion: 
if %craciu%== 1 goto openports
if %craciu%== 2 goto closeports
if %craciu%== 3 goto appinfo
if %craciu%== 4 exit

:openports
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                          [Open Ports - By craciu25_YT ]                      )
echo                                                                              )
echo                              [ Elija Una Opcion ]                            )
echo                                                                              )
echo                                                                              )
echo     [1]. Puerto TCP ..                                                       )
echo                                                                              )
echo     [2]. Puerto UDP ..                                                       )
echo                                                                              )
echo     [3]. Volver al menu ..                                                   )
echo _____________________________________________________________________________)
set/p craciu=Elija Una Opcion: 
if %craciu%== 1 goto menuopentcp
if %craciu%== 2 goto menuopenudp
if %craciu%== 3 exit

:menuopentcp
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                        [Open Ports - By craciu25_YT ]                        )
echo                                                                              )
echo                       [ Que puerto quiere abrir (TCP)]                       )
echo                                                                              )
echo                                                                              )
echo     [1]. 80 (http) ..                                                        )
echo                                                                              )
echo     [2]. 19132 (Minecraft Bedrock Server) ..                                 )
echo                                                                              )
echo     [3]. 25565 (Minecraft Java Server) ..                                    )
echo                                                                              )
echo     [4]. Puerto personalizado ..                                             )
echo _____________________________________________________________________________)
set/p craciu=Elija Una Opcion: 
if %craciu%== 1 goto opentcp80
if %craciu%== 2 goto opentcp19132
if %craciu%== 3 goto opentcp25565
if %craciu%== 4 goto opentcpcustom

:opentcp80
cls
echo Abriendo puerto 80...
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall add rule name="OpenPorts Open TCP 80" dir=in action=allow protocol=TCP localport=80
cls
echo Puerto 80 abierto con exito!
timeout /NOBREAK /T 2 >null
goto menu

:opentcp19132
cls
echo Abriendo puerto 19132...
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall add rule name="OpenPorts Open TCP 19132" dir=in action=allow protocol=TCP localport=19132
cls
echo Puerto 19132 abierto con exito!
timeout /NOBREAK /T 2 >null
goto menu

:opentcp25565
cls
echo Abriendo puerto 25565...
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall add rule name="OpenPorts Open TCP 25565" dir=in action=allow protocol=TCP localport=25565
cls
echo Puerto 25565 abierto con exito!
timeout /NOBREAK /T 2 >null
goto menu

:opentcpcustom
cls
echo Que puerto quiere abrir (TCP)?
set/p port=
cls 
echo Usted quiere abrir el puerto "%port%"?
set/p son=Si o No: 
if %son%==si goto opentcpcustomyes
if %son%==sI goto opentcpcustomyes
if %son%==SI goto opentcpcustomyes
if %son%==Si goto opentcpcustomyes
if %son%==s goto opentcpcustomyes
if %son%==S goto opentcpcustomyes
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %son%==no goto opentcpcustom
if %son%==nO goto opentcpcustom
if %son%==NO goto opentcpcustom
if %son%==No goto opentcpcustom
if %son%==n goto opentcpcustom
if %son%==N goto opentcpcustom

:opentcpcustomyes
cls
echo Abriendo puerto %port%
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall add rule name="OpenPorts Open TCP %port%" dir=in action=allow protocol=TCP localport=%port%
goto menu


:menuopenudp
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                        [Open Ports - By craciu25_YT ]                        )
echo                                                                              )
echo                       [ Que puerto quiere abrir (UDP) ]                      )
echo                                                                              )
echo                                                                              )
echo     [1]. Puerto personalizado ..                                             )
echo _____________________________________________________________________________)
set/p craciu=Elija Una Opcion: 
if %craciu%== 1 goto openudpcustom

:openudpcustom
cls
echo Que puerto quiere abrir (UDP)?
set/p port=
cls 
echo Usted quiere abrir el puerto "%port%"?
set/p son=Si o No: 
if %son%==si goto openudpcustomyes
if %son%==sI goto openudpcustomyes
if %son%==SI goto openudpcustomyes
if %son%==Si goto openudpcustomyes
if %son%==s goto openudpcustomyes
if %son%==S goto openudpcustomyes
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %son%==no goto openudpcustom
if %son%==nO goto openudpcustom
if %son%==NO goto openudpcustom
if %son%==No goto openudpcustom
if %son%==n goto openudpcustom
if %son%==N goto openudpcustom

:openudpcustomyes
cls
echo Abriendo puerto %port%
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall add rule name="OpenPorts Open UDP %port%" dir=in action=allow protocol=UDP localport=%port%
goto menu

:closeports
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                          [Open Ports - By craciu25_YT ]                      )
echo                                                                              )
echo                              [ Elija Una Opcion ]                            )
echo                                                                              )
echo                                                                              )
echo     [1]. Puerto TCP ..                                                       )
echo                                                                              )
echo     [2]. Puerto UDP ..                                                       )
echo                                                                              )
echo     [3]. Volver al menu ..                                                   )
echo _____________________________________________________________________________)
set/p craciu=Elija Una Opcion: 
if %craciu%== 1 goto menuclosetcp
if %craciu%== 2 goto menucloseudp
if %craciu%== 3 exit

:menuclosetcp
cls
echo Que puerto quiere cerrar (TCP)?
set/p port=
cls 
echo Usted quiere cerrar el puerto "%port%"?
set/p son=Si o No: 
if %son%==si goto closetcp
if %son%==sI goto closetcp
if %son%==SI goto closetcp
if %son%==Si goto closetcp
if %son%==s goto closetcp
if %son%==S goto closetcp
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %son%==no goto menuclosetcp
if %son%==nO goto menuclosetcp
if %son%==NO goto menuclosetcp
if %son%==No goto menuclosetcp
if %son%==n goto menuclosetcp
if %son%==N goto menuclosetcp

:closetcp
cls
echo Cerrando puerto %port%
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall delete rule name="OpenPorts Open TCP %port%"
netsh advfirewall firewall add rule name="OpenPorts Close TCP %port%" dir=in action=block protocol=TCP localport=%port%
cls
echo Puerto %port% TCP cerrado.
timeout /NOBREAK /T 2 >null
goto menu

:menucloseudp
cls
echo Que puerto quiere cerrar (UDP)?
set/p port=
cls 
echo Usted quiere cerrar el puerto "%port%"?
set/p son=Si o No: 
if %son%==si goto closeudp
if %son%==sI goto closeudp
if %son%==SI goto closeudp
if %son%==Si goto closeudp
if %son%==s goto closeudp
if %son%==S goto closeudp
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %son%==no goto menucloseudp
if %son%==nO goto menucloseudp
if %son%==NO goto menucloseudp
if %son%==No goto menucloseudp
if %son%==n goto menucloseudp
if %son%==N goto menucloseudp

:closeudp
cls
echo Cerrando puerto %port%
timeout /NOBREAK /T 2 >null
netsh advfirewall firewall delete rule name="OpenPorts Open UDP %port%"
netsh advfirewall firewall add rule name="OpenPorts Close UDP %port%" dir=in action=block protocol=UDP localport=%port%
cls
echo Puerto %port% UDP cerrado.
timeout /NOBREAK /T 2 >null
goto menu

:appinfo
cls
echo __________________________________
echo.
echo APPInfo                           
echo.
echo.
echo Version: %ver%                    
echo.
echo By %by%                           
echo.
echo Mas apps en:                      
echo %masapps%    
echo.
echo Github AuchenDevs: %github% 
echo.
echo Github craciu: %githubc%
echo.
echo Dia que se finalizo la %ver%:        
echo %ultac%   
echo.
echo Ver. estable: %stable%                        
echo __________________________________
echo.
echo.
echo Pulsa enter para volver al menu
pause >null