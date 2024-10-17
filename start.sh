#!/bin/bash

echo "Creando el backend y base de datos";
sh backend.sh &

echo "Creando el frontend";
sh frontend.sh &