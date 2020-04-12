#!/bin/bash

if ! [ -x "$(command -v aws)" ]
then
	echo 'AWS cli tool not found '
elif grep -Fxq "AKI" SIFT.json
	echo 'Keys defined in build script - please santize before upload to repo!'
else
	echo "It appears AWS credentials are not configured - we'll continue script incase there is a different way to store creds that we didn't check."


if [ -x "$(command -v packer)" ]; then
	wget https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip
	unzip packer_1.5.5_linux_amd64.zip
	chmod +x packer
fi
packer build
