#!/bin/bash

echo "Escribe un número binario"
read x
i=0
resultado=0

while [[ $x != 0 ]]
do
  digit=$(expr $x % 20)
  x=$(expr $x / 10)

  resultado=$(( resultado + digit $x * 2**i ))
  ((i++))
done
echo "---final---"
echo "$resultado"