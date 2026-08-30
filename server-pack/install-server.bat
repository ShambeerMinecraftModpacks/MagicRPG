@echo off
setlocal
set "FORGE_VERSION=1.7.10-10.13.4.1614-1.7.10"
set "FORGE_JAR=forge-%FORGE_VERSION%-universal.jar"
set "INSTALLER=forge-%FORGE_VERSION%-installer.jar"
set "URL=https://maven.minecraftforge.net/net/minecraftforge/forge/%FORGE_VERSION%/%INSTALLER%"
if exist "%FORGE_JAR%" exit /b 0
where java >nul 2>nul
if errorlevel 1 (
  echo Java is missing from PATH.
  exit /b 1
)
if not exist "%INSTALLER%" powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%INSTALLER%'"
if not exist "%INSTALLER%" exit /b 1
java -jar "%INSTALLER%" --installServer
if not exist "%FORGE_JAR%" exit /b 1
