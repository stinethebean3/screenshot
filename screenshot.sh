#!/bin/bash

SSH_USERNAME="stinethebean"
SSH_HOSTNAME="admin.hashbang.sh"
PUBLIC_URL="http://stinethebean.hashbang.sh/$SCREENSHOT_FILE"
PUBLIC_FOLDER="Public/"
SCREENSHOT_DIR="$HOME/.screenshots"
SCREENSHOT_FILE="$(date +%y-%m-%d-%H-%M-%S).png"

mkdir -p "$SCREENSHOT_DIR"

import "$SCREENSHOT_DIR/$SCREENSHOT_FILE"

scp "$SCREENSHOT_DIR/$SCREENSHOT_FILE" "$SSH_USERNAME@$SSH_HOSTNAME:$PUBLIC_FOLDER"

echo "$PUBLIC_URL"

echo "$PUBLIC_URL" | xclip
