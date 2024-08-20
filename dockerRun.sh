#!/bin/bash

currentDir=$(pwd)
tarFiles="$currentDir/tarFiles"
mkdir -p "$tarFiles"
chmod -R 755 "$tarFiles"
sudo chown -R $USER:$USER "$tarFiles"
path="$tarFiles"

read -p "Enter the image name: " name
read -p "Enter the image tag: " tag
read -p "Enter the image platform: " platform
read -p "Enter the tar file name: " tarName

sudo docker buildx build --platform linux/$platform -t "$name:$tag" --output "type=docker,dest=$path/$tarName.tar" .
