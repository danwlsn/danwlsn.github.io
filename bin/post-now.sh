#!/usr/bin/env bash
set -x

POST=$1
KEY=$2

echo $POST
echo $KEY

content=$(cat ${POST} | sed '1,6d')

curl --location --request POST --header "Authorization: Bearer $KEY" 'https://api.omg.lol/address/wlsn/now' --data '{"content":"'$content'"}'

