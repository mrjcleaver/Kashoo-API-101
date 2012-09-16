#! /bin/sh
APITOKEN=`cat APITOKEN`
curl -s -H 'Accept: application/json' -H "Authorization: TOKEN uuid:$APITOKEN" https://www.kashoo.com/api/users/me/businesses

