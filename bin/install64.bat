@echo off

set startMenuLocation="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu"

if not exist "C:\Program Files\Santorini\" mkdir "C:\Program Files\Santorini\"
xcopy ./jdk-15.0.1 "C:\Program Files\Santorini\jdk-15.0.1" /s /e
xcopy ./jar "C:\Program Files\Santorini\jar" /s /e
xcopy ./bin "C:\Program Files\Santorini\bin" /s /e
mklink /D %startMenuLocation%\Santorini "C:\Program Files\Santorini\bin\santorini64.exe"
mklink /D %startMenuLocation%\SantoriniLauncher "C:\Program Files\Santorini\bin\santorini-launcher.exe"