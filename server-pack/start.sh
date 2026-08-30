#!/usr/bin/env sh
set -eu
FORGE_JAR='forge-1.7.10-10.13.4.1614-1.7.10-universal.jar'
if [ ! -f "$FORGE_JAR" ]; then
  echo 'Forge server is missing. Run ./install-server.sh first.'
  exit 1
fi
if [ ! -f 'log4j2_17-111.xml' ]; then
  echo 'log4j2_17-111.xml is missing.'
  exit 1
fi
if [ ! -f 'eula.txt' ]; then
  cp 'eula.txt.example' 'eula.txt'
fi
if ! grep -qx 'eula=true' 'eula.txt'; then
  echo 'Read eula.txt and set eula=true only if you accept the Mojang EULA.'
  exit 1
fi
exec java -Xms4G -Xmx6G -XX:+UseG1GC -Dlog4j.configurationFile=log4j2_17-111.xml -jar "$FORGE_JAR" nogui
