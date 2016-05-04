@echo off
FOR %%a in (./Exe/*.hex) do ( set firmware="./Exe/%%a" )

IF firmware == [] do ( 
	for %%a in (./Debug/Exe/*.hex) do (
	set firmware="./Debug/Exe/%%a"
 )

C:\SinaProg\avrdude -C C:\SinaProg\avrdude.conf -c usbtiny -b 115200 -p t13 -U flash:w:%firmware%:a -q
pause