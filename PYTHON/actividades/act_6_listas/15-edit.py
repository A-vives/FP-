fruits = []                 # Añade elementoa a la lista "fruits"
n = int(input("hoy many words?: "))
for i in range(n):
    wrd = str(input(f"Type a Word:{i+1}"))
    fruits.append(wrd)      # Append añade al final de la lista
print(fruits)
rem = input("word to remplace?")
while i in len(fruits):
    pos_rem = fruits.index(rem)         # Posicion en indice de lo que vamos a cambiar
print(f"{rem}is in de position: {pos_rem}")
print(f"{fruits}")
