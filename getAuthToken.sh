#! /bin/sh
LOGIN=$1
if [ -z "$LOGIN" ]; then
   echo usage $0 email-address-you-use-to-login
   exit 1;
fi

echo "Type your password"
read PASS
TOKEN=`curl -s --data "email=$LOGIN&password=$PASS" https://www.kashoo.com/api/authTokens`

echo $TOKEN > APITOKEN
echo TOKEN $TOKEN saved to file APITOKEN

