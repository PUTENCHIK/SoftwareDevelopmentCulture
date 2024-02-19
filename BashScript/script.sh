#!/bin/bash

url="http://158.160.110.45"
request="/user/register"

response$(curl -Is "$url" | head -n 1)

if [[ "$response" == *"200 OK"* ]]; then
	echo "IP is okay."
else 
	echo "There isn't answer."
fi
