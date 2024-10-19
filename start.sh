#!/bin/bash

# echo "Creando el backend y base de datos";
# sh backend.sh &

# echo "Creando el frontend";
# sh frontend.sh &

docker network create app-network &&

git clone https://github.com/saravia-developer/api-login-auth.git &&
git clone https://github.com/saravia-developer/login-angular.git &&

docker-compose up -d;