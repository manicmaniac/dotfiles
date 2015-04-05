#!/bin/sh

BASE_URL='http://nodejs.org/api'

curl -sS $BASE_URL/index.json \
    | jq '.desc[] | select(.type == "text").text' \
    | sed -e 's/"\[.*\](\(.*\).html)"/\1.json/g' \
    | xargs -P4 -I% sh -c 'curl -sS $1/$2 | jq ".modules[].name, .modules[].methods[].name" 2> /dev/null | sed -e "s/\"//g"' -- $BASE_URL % \
    | sort -u \
    | sed -e 's/_(.*)//g' # tls_(ssl) -> tls

