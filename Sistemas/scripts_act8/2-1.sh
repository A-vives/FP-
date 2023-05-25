#!/bin/bash


echo "Ingrese la ruta del directorio:"
read ruta

if [ -d "$ruta" ]; then
  directorio=$(ls -d "$ruta")
  echo "El nombre del directorio es: $directorio"
else
  echo "El directorio especificado no existe."
fi

exit 0
