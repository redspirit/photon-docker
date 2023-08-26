#!/bin/bash

echo "Start photon"
java -jar photon.jar -nominatim-import -host localhost -port 5432 -database nominatim -user nominatim -password qaIACxO6wMR3 -languages ru
