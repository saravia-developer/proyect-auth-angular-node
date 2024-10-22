#!/bin/bash

git clone https://github.com/saravia-developer/api-login-auth.git &&
git clone https://github.com/saravia-developer/login-angular.git &&

docker compose -f docker-compose.yml up -d --build