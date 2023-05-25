#!/bin/bash
echo "-----------------------V2"
echo "que palabra desea buscar?"
echo "-------------------------"

read palabra

echo "-------------------------"
echo "--DONDE QUIERES BUSCAR?--"
echo "-------------------------"
echo "INSERTA LA RUTA COMPLETA"
echo "-------------------------"

read ruta

resultado=$(find $ruta -type f -print0 | xargs -0 grep -w -i -s $palabra)


if [ -z $resultado ]; then
  echo "No se encontró el patrón \"$palabra\" en el archivo $ruta"
else
  echo "Se encontró el patrón \"$palabra\" en el archivo $ruta:"
  echo "$resultado"
fi

exit 0
