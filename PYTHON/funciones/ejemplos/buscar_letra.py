def search_char(txt, chr):      # "def" define la funcion
    for i in range(len(txt)):   # para cada uno de la longitud de txt
        if txt[i] == chr:       # comprueba si la letra dentro del texto es igual
            return i            # devuelve el valor de I "Valor de posicion"
    return -1
        #function call
#print(search_char('avestruz es guapo', 'i')) # devuelve el conteo de las letras que hay

def count_char(txt, chr):               # "def" define la funcion
    char_count = 0
    for i in range(len(txt)):           # para cada uno de la longitud de txt
        if txt[i] == chr:               # comprueba si la letra dentro del texto es igual
            char_count += 1             # sume el contador de letras
    return char_count                   # Devuelve el valor de char_count

        #function call
print(count_char('avestruz es guapo', 'g')) # devuelve el conteo de las letras que hay

#text = input("introduzca un texto: ")  
#char = input("letra a buscar: ")
#res = search_char(text, char)  
#print(f"{res}")        # Devuelve lla suma de las letras a buscar en un texto introducido


def suma(a, b):     # Definimos la funcion "suma" con los parametros a y b        
    return a+b         # Devuelve la suma de los valores

#n1 = int(input("Escribe primer numero a sumar: "))
#n2 = int(input("Escribe segundo numero a sumar: "))
#print(suma(n1, n2))

def podio_austin(pos):          #Define la funcion "podio_austin"
    if pos == 1:                #Evalua si es igual a 1(int)
        return 'Alex Rins'      #Devuelve el valor de 1 = "Alex Rins"
    elif pos == 2:
        return 'Luca Marini'
    elif pos == 3:
        return 'Fabio Quartararo'
    else:                       #Si no es ninguna anterior devuelve lo sigiente
        return 'I don\'t know'
    
#posi = int(input("Que posicion deseas saber? "))
#print(podio_austin(posi))#

