#!/bin/bash
echo "-------------------------"
echo "que palabra desea buscar?"
echo "-------------------------"

read palabra

echo "-------------------------"
echo "--DONDE QUIERES BUSCAR?--"
echo "-------------------------"
echo "INSERTA LA RUTA COMPLETA"
echo "-------------------------"

read ruta

find $ruta -type f -print0 | xargs -0 grep -w -i -s $palabra | wc -w
