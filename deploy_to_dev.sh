#!/bin/bash
npm run pack:web
cd dist/web 
zip -r dzutube.zip .
scp dzutube.zip root@115.73.219.83:/root
ssh root@115.73.219.83 \
"unzip -o dzutube.zip -d /var/www/projects/FreeTube/dist/web"