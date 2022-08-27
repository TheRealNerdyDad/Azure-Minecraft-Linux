#!/bin/bash

# Update apt cache and all modules
sudo apt-get update
sudo apt-get upgrade -y

# Install curl & unzip
sudo apt-get install curl -y
sudo apt-get install unzip -y

# Install Minecraft Bedrock software
mkdir minecraft
curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.19.21.01.zip --output bedrock-server.zip
unzip -q -d ~/minecraft bedrock-server.zip
rm ~/minecraft/server.properties

# Pull down Hermicraft Server
curl https://download.hermitcraft.com/hermitcraft6-bedrock.zip --output hermicraft6-bedrock.zip
mkdir hermicraft
unzip -q -d ~/hermicraft hermicraft6-bedrock.zip

# Copy Hermicraft servers server.properties file to the correct location and overwrite default one
cp -r ~/hermicraft/* ~/minecraft/*
curl https://raw.githubusercontent.com/TheRealNerdyDad/Azure-Minecraft-Linux/main/server.properties --output ~/minecraft/server.properties

# Move to the minecraft directory and start server
cd ~/minecraft
LD_LIBRARY_PATH=. ./bedrock_server
