#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

PASSWORD_HASH=$(openssl passwd -6 vagrant)

sudo useradd -m -g p1c2_2024_gAlumno -p "$PASSWORD_HASH" p1c2_2024_A1
sudo useradd -m -g p1c2_2024_gAlumno -p "$PASSWORD_HASH" p1c2_2024_A2
sudo useradd -m -g p1c2_2024_gAlumno -p "$PASSWORD_HASH" p1c2_2024_A3
sudo useradd -m -g p1c2_2024_gProfesores -p "$PASSWORD_HASH" p1c2_2024_P1

sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-Utn/alumno_1
sudo chmod 750 /Examenes-Utn/alumno_1
sudo chmod 750 /Examenes-Utn/alumno_1/parcial_1
sudo chmod 750 /Examenes-Utn/alumno_1/parcial_2
sudo chmod 750 /Examenes-Utn/alumno_1/parcial_3

sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-Utn/alumno_2
sudo chmod 700 /Examenes-Utn/alumno_2
sudo chmod 700 /Examenes-Utn/alumno_2/parcial_1
sudo chmod 700 /Examenes-Utn/alumno_2/parcial_2
sudo chmod 700 /Examenes-Utn/alumno_2/parcial_3

sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-Utn/alumno_3
sudo chmod 775 /Examenes-Utn/alumno_3
sudo chmod 775 /Examenes-Utn/alumno_3/parcial_1
sudo chmod 775 /Examenes-Utn/alumno_3/parcial_2
sudo chmod 775 /Examenes-Utn/alumno_3/parcial_3

sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-Utn/profesores
sudo chmod 770 /Examenes-Utn/profesores

for i in 1 2 3; do
    sudo -u p1c2_2024_A1 bash -c "echo 'p1c2_2024_A1' > /Examenes-Utn/alumno_1/parcial_$i/validar.txt"
done

for i in 1 2 3; do
    sudo -u p1c2_2024_A2 bash -c "echo 'p1c2_2024_A2' > /Examenes-Utn/alumno_2/parcial_$i/validar.txt"
done

for i in 1 2 3; do
    sudo -u p1c2_2024_A3 bash -c "echo 'p1c2_2024_A3' > /Examenes-Utn/alumno_3/parcial_$i/validar.txt"
done

sudo -u p1c2_2024_P1 bash -c "echo 'p1c2_2024_P1' > /Examenes-Utn/profesores/validar.txt"


