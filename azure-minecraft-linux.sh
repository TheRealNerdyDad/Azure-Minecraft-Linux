#!/bin/bash

# Update apt cache.
sudo apt-get update

# Install curl & unzip
sudo apt-get install curl -y
sudo apt-get install unzip -y

# Install Minecraft Bedrock software
mkdir ~/minecraft
curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.19.21.01.zip
unzip -q -d ~/minecraft bedrock-server-1.19.21.01.zip

# Pull down Hermicraft Server
curl https://download.hermitcraft.com/hermitcraft6-bedrock.zip
mkdir ~/hermicraft
unzip -q -d ~/hermicraft hermicraft6-bedrock.zip
