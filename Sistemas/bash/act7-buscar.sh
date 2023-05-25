#1# Comando para poner todos los comandos de linux en una variable
contador=$(ls /bin | wc -l)

#2# variable practica contenga el path home/$user/$login/prectica
practica=/home/$LOGIN/practica

#3# crear carpeta practica
mkdir practica

#4# contar lapabras de un archivo
wc -w texto.text

#5# buscar en el sistema las referencias de archivos de acceso por caracteres
#5# nombre empieza por "ip" filttrar salida de error y enviar mensage al final
find / -type f -name "ip*" 2>/dev/null | grep -v "Permission denied" && echo "Busqueda finalizada"

#6# crear archivo resumen con contenido del nombre de las carpetas del directorio
#6# /lib que entremedias del nombre tenga el valor "h"
sudo find /lib/ -type f -name "*h*" > resumen 2>/dev/null

#7# 

#8#
sudo find . -type d \( -name "c*" -o -name "d*" -o -name "F*" \) > resumen.txt

## AND - Se tienen que cumplir todas
sudo find . -type d -name "c*" -name "d*" -name "F*" > resumen.txt

#9#
find $HOME -name "*" | wc -l 2>/dev/null

#10#
find $HOME -maxdepth 1 -type d 2>/dev/null



