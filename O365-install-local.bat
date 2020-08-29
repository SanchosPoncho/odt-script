@ECHO OFF
:: 
:: 
:: V.1.0.0
:: wford@managedsolution.com
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
%cd%setup.exe /configure %cd%bussiness-config64.xml


