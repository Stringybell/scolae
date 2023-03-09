@echo off

set startMenuLocation="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu"

echo "Uninstalling..."
if exist "C:\Program Files (x86)\Santorini\" rd /s/q "C:\Program Files (x86)\Santorini\"
rd /s/q %startMenuLocation%\Santorini
rd /s/q %startMenuLocation%\SantoriniLauncher
echo "Bye"