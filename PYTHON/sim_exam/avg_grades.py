grades = []                            # declaramos lista de notas

while True:
    try:
        gr = float(input("Type a grade: \n press(Enter in blank) to continue)"))    # Defiinimos la variable de la nota
        grades.append(gr)                   #Añadimos el valor de la variable en la lista
    except ValueError:               # Cuando pulsamos enter y esta vacio el 
        n = len(grades)                    #    Declaramos numero de elementos de la lista
        avg = sum(grades)/int(n)           # Calculamos el Promedio dividiento la suma de la lista grades entre el numero de longitud de la lista 
        print(f"you avarage is: {avg}")    # Escribimos en pantalla el resultado
        break