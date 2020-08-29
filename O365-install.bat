@ECHO OFF
:: 
:: 
:: V.1.0.0
:: wford@managedsolution.com
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
mkdir C:\temp
:: Download Office365 ProPlus 64 Bit MSI
::powershell -Command "Invoke-WebRequest ? -OutFile %systemdrive%%homepath%\office365.ProPlus.64.msi"

:: Download Office Deployment Tool 
powershell -Command "Invoke-WebRequest https://managedsolution-my.sharepoint.com/:f:/p/wford/EuTMSxuVNilMjAXBeBNCQYYB9PuswrxMnCAWmFRFZjJnSA?e=X0Bh75 -OutFile C:\temp\setup.exe"
:: Download XML File
powershell -Command "Invoke-WebRequest https://managedsolution-my.sharepoint.com/:u:/p/wford/EQq4I5x71BdLhAG_lOWRmFEB3nFntlouOfDH1EKO1J267Q?e=jSSBN7 -OutFile C:\temp\bussiness-config64.xml"
C:\temp\odt.exe /configure C:\temp\bussiness-config64.xml


