#!/usr/bin/env bash

# Read input variables
COMPONENT=$1
STATUS=$2

echo $STATUS

# Default message
MESSAGE=""$COMPONENT" failed :no_entry:"
if [ $STATUS = 0 ]; then
    MESSAGE=""$COMPONENT" passed :white_check_mark:"
fi

# Send notification
curl -X POST \
  https://discord.com/api/webhooks/1018650521244028959/a1CA7twdB3VCPABHj2sZq3v53NcbGa7YDISR99pQGZ0fLGrrPQ-O8ltwNMvL9-pV5IqJ \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
	"content":"'"$MESSAGE"'"
}'