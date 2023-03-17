#!/bin/bash
npm run pack:web
cd dist/web 
zip -r dzutube.zip .
scp dzutube.zip root@68.183.236.72:/root
ssh root@68.183.236.72 \
"unzip -o dzutube.zip -d /var/www/html/dist/web"