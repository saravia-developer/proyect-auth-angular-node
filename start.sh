#!/bin/bash

# echo "Creando el backend y base de datos";
# sh backend.sh &

# echo "Creando el frontend";
# sh frontend.sh &

docker compose -f docker-compose.yml up -d --build