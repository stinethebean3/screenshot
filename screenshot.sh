#!/bin/bash

# Steps to install:
# 1. Install imagemagick (For example: apt-get install imagemagick)
# 2. Save this script to a folder in your $PATH (For example: $HOME/bin/ss)
# 3. Update variables below as appropriate


SSH_USERNAME="stinethebean"
SSH_HOSTNAME="admin.hashbang.sh"
PUBLIC_URL="stinethebean.hashbang.sh"
PUBLIC_FOLDER="Public/"
SCREENSHOT_DIR="$HOME/.screenshots"
SCREENSHOT_FILE="$(date +%y-%m-%d-%H-%M-%S).png"
FULL_URL="http://$PUBLIC_URL/$SCREENSHOT_FILE"

mkdir -p $SCREENSHOT_DIR

import $SCREENSHOT_DIR/$SCREENSHOT_FILE

scp $SCREENSHOT_DIR/$SCREENSHOT_FILE $SSH_USERNAME@$SSH_HOSTNAME:$PUBLIC_FOLDER

echo $FULL_URL

echo $FULL_URL | xclip                      