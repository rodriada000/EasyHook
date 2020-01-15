@ECHO OFF
SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptsDirectory%Build.ps1
SET vsVer = %1
SET ver = %2
IF "%vsVer%"=="" SET vsVer="vs2017"
IF "%ver%"=="" (
	SET /p ver=<Version.txt
)
REM In current console window
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' '%vsVer%' '%ver%'";

REM In new Powershell window
REM PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""'}";

REM As Admin:
REM PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs}";
