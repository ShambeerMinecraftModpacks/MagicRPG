#!/usr/bin/env sh
set -eu
FORGE_VERSION='1.7.10-10.13.4.1614-1.7.10'
FORGE_JAR="forge-$FORGE_VERSION-universal.jar"
INSTALLER="forge-$FORGE_VERSION-installer.jar"
URL="https://maven.minecraftforge.net/net/minecraftforge/forge/$FORGE_VERSION/$INSTALLER"
if [ -f "$FORGE_JAR" ]; then
  exit 0
fi
if [ ! -f "$INSTALLER" ]; then
  curl -fL "$URL" -o "$INSTALLER"
fi
java -jar "$INSTALLER" --installServer
test -f "$FORGE_JAR"
