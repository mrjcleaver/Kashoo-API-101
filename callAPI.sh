#! /bin/sh
APITOKEN=`cat APITOKEN`
BUSINESS_ID=`cat BUSINESS_ID`

if [ -z "$BUSINESS_ID" ]; then
  echo "no business id!"
  exit 1
fi

if [ -z "$1" ]; then
  ENDPOINT=/businesses/$BUSINESS_ID/records/transfers
else
  ENDPOINT=$1
  #TODO: provide a way to inject BUSINESS_ID by replacing something like !, e.g. 
  # /businesses/!/records/transfers => /businesses/$BUSINESS_ID/records/transfers  
fi

echo ENDPOINT $ENDPOINT 1>&2
curl -H 'Accept: application/json' -H "Authorization: TOKEN uuid:$APITOKEN" https://api.kashoo.com/api$ENDPOINT
