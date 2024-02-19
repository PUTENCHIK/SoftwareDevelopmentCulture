#!/bin/bash

url="158.160.110.45"
request="/user/register"
json='{"nickname":"'$1'", "password":"'$2'"}'

response=$(curl -s -X POST -H "Content-Type: application/json" -d "$json" "http://$url$request" | head -n 1)

echo $response
