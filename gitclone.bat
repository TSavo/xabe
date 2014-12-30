SET PATH=%PATH%;%~dp0\MinGW\msys\1.0\home\xawksow\git\bin
SET MYPATH=%~dp0\MinGW\msys\1.0\home\xawksow\
CD %MYPATH%\
IF EXIST "%MYPATH%\coin" (
	rmdir "%MYPATH%\coin" /s /q
)
set /p url=Type in your github url (example: https://github.com/DGCFoundation/DGCV3.0.git)
git clone %url% coin