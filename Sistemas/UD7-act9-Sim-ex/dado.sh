#!/bin/bash

echo "Que dado deseas lanzar:"
echo "-------------1-D6--------------"
echo "-------------2-D8--------------"
echo "-------------3-D12-------------"
echo "------------4-Salir------------"

read opcion

case $opcion in
  1)
     echo "Quieres tirar el dado de 6 caras?"
        puntos=0
        tiradas=1

        
        while true; do
        
        read -p "Tirar el dado (s/n)? " tirar

        
        if [[ $tirar == "s" ]]; then
        
            D6=$(( RANDOM % 6 + 1 ))

            animacion=("...." "...." "o..." ".o.." "..o." "...o")
            for i in "${animacion[@]}"; do
            echo -ne "$i\r"
            sleep 0.1
            done

            puntos=$(( $D6 + $puntos ))
            echo "--------------------------------"
            echo "Tirada nº$tiradas"
            echo "Te ha salido un $D6"
            echo "--------------------------------"
            echo "TOTAL:/$puntos/"
            echo "--------------------------------"

      
            if [[ $D6 -eq 1 ]]; then
            echo "Has sacado un 1. Fin del juego."
            break
            fi

        
            
            tiradas=$(( tiradas + 1 ))
            else

              break

            fi
            done

            echo "El resultado total es: $puntos"
    ;;
  2)
     echo "Quieres titar el dado de 8 caras?"
        puntos=0
        tiradas=1

        
        while true; do
        
        read -p "Tirar el dado (s/n)? " tirar

        
        if [[ $tirar == "s" ]]; then
        
            D8=$(( RANDOM % 8 + 1 ))

            animacion=("...." "...." "o..." ".o.." "..o." "...o")
            for i in "${animacion[@]}"; do
            echo -ne "$i\r"
            sleep 0.1
            done

            puntos=$(( $D8 + $puntos ))
            echo "--------------------------------"
            echo "Tirada nº$tiradas"
            echo "Te ha salido un $D8"
            echo "--------------------------------"
            echo "TOTAL: /$puntos/"
            echo "--------------------------------"
      
            if [[ $D8 -eq 1 ]]; then
            echo "Has sacado un 1. Fin del juego."
            break
            fi

        
            
            tiradas=$(( tiradas + 1 ))
            else

              break

            fi
            done

            echo "El resultado total es: $puntos"
            ;;
  3)
    echo "Quieres tirar el dado de 12 caras?"
        puntos=0
        tiradas=1

        
        while true; do
        
        read -p "Tirar el dado (s/n)? " tirar

        
        if [[ $tirar == "s" ]]; then
        
            D12=$(( RANDOM % 12 + 1 ))

            animacion=("...." "...." "o..." ".o.." "..o." "...o")
            for i in "${animacion[@]}"; do
            echo -ne "$i\r"
            sleep 0.1
            done

            puntos=$(( $D12 + $puntos ))
            echo "--------------------------------"
            echo "Tirada nº$tiradas"
            echo "Te ha salido un $D12"
            echo "--------------------------------"
            echo "--------TOTAL: /$puntos/--------"
            echo "--------------------------------"

      
            if [[ $D12 -eq 1 ]]; then
            echo "Has sacado un 1. Fin del juego."
            break
            fi

        
            
            tiradas=$(( tiradas + 1 ))
            else

              break

            fi
            done

            echo "El resultado total es: $puntos"
    ;;
  4)
    echo "¡Hasta luego!"
    exit 0
    ;;

  *)
    echo "Opción inválida. Intente de nuevo."
    ;;
esac