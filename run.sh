#!/bin/bash

if [ ! -f "/data/complete.flag" ]; then

  mkdir /data
  cd /data

  # Get fabricmc
  curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.16.5/0.14.9/0.11.1/server/jar

  # Get Fetcher
  wget https://github.com/NeunEinser/bingo/releases/download/5.0/Fetchr-5.0.zip
  unzip Fetchr-5.0.zip
  rm -rf Fetchr-5.0.zip
  rm -rf Fetchr-5.0/resources.zip

  # Get mods
  mkdir mods
  cd mods

  wget https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.16.5-0.6.6/lithium-fabric-mc1.16.5-0.6.6.jar
  wget https://github.com/CaffeineMC/phosphor-fabric/releases/download/mc1.16.2-0.8.0/phosphor-fabric-mc1.16.2-0.8.0.jar


d /data

  cp /server.properties server.properties

  echo "eula=true" > /data/eula.txt

  touch complete.flag

  java -Xmx2G -jar fabric-server-mc.1.16.5-loader.0.14.9-launcher.0.11.1.jar nogui
fi
