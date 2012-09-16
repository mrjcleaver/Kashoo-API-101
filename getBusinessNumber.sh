#! /bin/sh 
sh testConnect.sh | tr '{' '\n' | grep /api/businesses/ | grep self 
echo "save                    ^^^^^^^ this number"
echo "and save it to file BUSINESS_ID"
