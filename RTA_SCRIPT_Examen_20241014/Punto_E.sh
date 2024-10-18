#!/bin/bash

RTA_DIR="../RTA_ARCHIVOS_Examen_20241014"
OUTPUT_FILE="${RTA_DIR}/Filtro_Basico.txt"

echo "ejecutando script"

echo "Total de Memoria RAM:" > "$OUTPUT_FILE"
grep "MemTotal" /proc/meminfo >> "$OUTPUT_FILE"

echo -e "\nInfo Chasis:" >> "$OUTPUT_FILE"
sudo dmidecode -t chassis >> "$OUTPUT_FILE"

echo "script ejecutado"

