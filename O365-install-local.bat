@ECHO OFF

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
setup.exe /configure busines-config64.xml
GOTO end

:32BIT
setup.exe /configure busines-config32.xml
GOTO end

:end
