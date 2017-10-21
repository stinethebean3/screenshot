#!/bin/bash

filename="$(mktemp).jpg"

import "$filename"

response="$( \
	curl \
		-sX POST \
		-H "authorization: Client-ID $IMGUR_CLIENT_ID" \
		-F "image=@$filename" https://api.imgur.com/3/image \
)"

echo "$response" | jq '.'

url="$(echo $response | jq -r '.data.link')"

echo $url | xclip -selection clip-board

