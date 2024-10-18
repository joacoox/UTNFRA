#!/bin/bash

BASE_DIR="$HOME/Estructura_Asimetrica"

mkdir -p "${BASE_DIR}/correo"
mkdir -p "${BASE_DIR}/cliente"

for i in $(seq 1 100); do
    touch "${BASE_DIR}/correo/cartas_${i}"
    touch "${BASE_DIR}/cliente/cartas_${i}"
done

for i in $(seq 1 10); do
    touch "${BASE_DIR}/correo/carteros_${i}"
done

echo "script finalizado"

