@echo off
@Rem Check for the folder path specified as parameter%1
@Rem If parameter%1 is empty, go to the error label
if "%1" EQU "" goto error 
newman run %1\autotest.json -d %1\data.json
exit
:error 
@Rem Specify current folder
echo variable not set
newman run %~dp0\autotest.json -d %~dp0\data.json
:exit
pause
