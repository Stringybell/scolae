@echo off

set startMenuLocation="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu"

if not exist "C:\Program Files (x86)\Santorini\" mkdir "C:\Program Files (x86)\Santorini\"
xcopy ./jdk-15.0.1 "C:\Program Files (x86)\Santorini\jdk-15.0.1" /s /e
xcopy ./jar "C:\Program Files (x86)\Santorini\jar" /s /e
xcopy ./bin "C:\Program Files (x86)\Santorini\bin" /s /e
mklink /D %startMenuLocation%\Santorini "C:\Program Files (x86)\Santorini\bin\santorini32.exe"
mklink /D %startMenuLocation%\SantoriniLauncher "C:\Program Files (x86)\Santorini\bin\santorini-launcher.exe"

