#!/bin/bash
echo "Nombre del archivo a editar"

read archivo
sleep 1

echo "qué palabra deseas sustituir?"

read sust

echo "palabra que sustituye"

read sust2
sleep 1

sed -i 's/sust/sust2/' $archivo