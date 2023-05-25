a = 'Alejandro'
b = ['Alex', 'Alejandro', 'Pablo', 'sam']

b.append(a)             #Añade un elemento en la ultima posicion de la lista
list.clear(b)           #borra toda la lista
c = b.count('Alex')     #Devuelve el numero de elementos que contiene la lista en ()
b.extend()              #extiende la lista con otra lista al final
b.index()               #Nos muestra la posicion del elemento en cuestion en la lista
b.insert(pos, str)      #Nos inserta elementos en una posicion especifica
b.pop()                 #Nos elimina el elemento que elijamos o el ultimo como defecto
b.reverse()             #Da la vuelta al orden de la lista
b.sort()                # Ordena de menor a  mayor la lista

table = [['0-0','0-1', '0-2'], ['1-0','1-1', '1-2'], ['2-0','2-1', '2-2']]

for i in range(len(table)):
    for j in range(len(table[i])):
        print(table[i][j])

for i in range(len(table)):
    print(i)