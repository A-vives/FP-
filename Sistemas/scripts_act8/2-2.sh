#!/bin/bash

echo "Ingrese la ruta del directorio raíz:"
read ruta

if [ -d "$ruta" ]; then
  raiz=$(ls -d "$ruta")
  echo "El directorio raíz es: $raiz"

  subdirectorios=$(find "$ruta" -type d -not -path "$ruta" -print0 | xargs -0 ls -d | grep -v "Permission denied" && echo "Busqueda finalizada")
  echo "Los subdirectorios son: $subdirectorios"
else
  echo "El directorio especificado no existe."
fi
