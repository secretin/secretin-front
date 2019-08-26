#!/bin/bash

rm -rf /usr/local/apache2/htdocs/*

cp -r /secretin-front/secretin-app-gh-pages/* /usr/local/apache2/htdocs/

sed -i "s|https:\/\/api.secret-in.me|$SECRETIN_API_URL|g" /usr/local/apache2/htdocs/static/js/*.js

httpd-foreground