#!/bin/bash

echo "iniciando script"

RTA_DIR="../RTA_ARCHIVOS_Examen_20241014"
OUTPUT_FILE="${RTA_DIR}/Filtro_Avanzado.txt"

IP_PUBLICA=$(curl -s ifconfig.me)

USUARIO=$(whoami)

HASH_USUARIO=$(sudo getent shadow "$USUARIO" | awk -F: '{print $2}')/

URL_REPOSITORIO=$(git -C "$RTA_DIR" remote get-url origin)

echo "IP Publica: $IP_PUBLICA" > "$OUTPUT_FILE"
echo "Mi usuario es: $USUARIO" >> "$OUTPUT_FILE"
echo "El hash de mi usuario es: $HASH_USUARIO" >> "$OUTPUT_FILE"
echo "La URL de mi repositorio es: $URL_REPOSITORIO" >> "$OUTPUT_FILE"

echo "script finalizado"

