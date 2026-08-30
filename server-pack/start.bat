@echo off
setlocal
set "FORGE_JAR=forge-1.7.10-10.13.4.1614-1.7.10-universal.jar"
if not exist "%FORGE_JAR%" (
  echo Forge server is missing. Run install-server.bat first.
  exit /b 1
)
if not exist "log4j2_17-111.xml" (
  echo log4j2_17-111.xml is missing.
  exit /b 1
)
if not exist "eula.txt" copy /Y "eula.txt.example" "eula.txt" >nul
findstr /X /C:"eula=true" "eula.txt" >nul
if errorlevel 1 (
  echo Read eula.txt and set eula=true only if you accept the Mojang EULA.
  exit /b 1
)
java -Xms4G -Xmx6G -XX:+UseG1GC -Dlog4j.configurationFile=log4j2_17-111.xml -jar "%FORGE_JAR%" nogui
