#!/bin/bash

directorio=$(pwd)
lista_archius=`ls -d $directorio`

echo "---------------------------------------"
echo "-----estas buscando en $directorio-----"
echo "---------------------------------------"
echo "----en que archivo estas pensando?-----"
echo "---------------------------------------"

read udirec

echo "-------------------------------------------------------"
echo "---------------Qué quieres saber de:-------------------"
echo "---------------$directorio/$udirec--------------------"
echo "-------------------------------------------------------"
echo "--------1# Usuario propietario-------------------------"
echo "--------2# Ver Permisos del archivo-directorio---------"
echo "----------------------3# Salir-------------------------"
echo "-------------------------------------------------------"

read sel 

if [[ $sel == 1 ]]; then
    user_id=$(stat -c %U "$directorio/$udirec")
    echo "---------------------------------------------------------"
    echo "---------$user_id és el propietario del archivo----------"
    echo "---------------------------------------------------------"

elif [[ $sel == 2 ]]; then
    agent_id=$(stat -c %A "$directorio/$udirec")
    echo "---------------------------------------------------------"
    echo "---------$agent_id son los permisos del archivo----------"
    echo "---------------------------------------------------------"

elif [[ $sel == 3 ]]; then
    exit 1 

else
    echo "Opción no válida."
fi

