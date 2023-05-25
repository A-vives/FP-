fruits = []                 # Añade elementoa a la lista "fruits"
n = int(input("hoy many words?: "))

for i in range(n):
    wrd = str(input(f"Type a Word{i+1}: "))
    fruits.append(wrd)      # Append añade al final de la lista
i = 0           
n = 0           #reseteamos variable
fruits1 = []                 # Añade elementoa a la lista "fruits"
n = int(input("hoy many words?: "))
for i in range(n):
    wrd = str(input(f"Type a Word{i+1}: "))
    fruits1.append(wrd)      # Append añade al final de la lista
print(f"frutas1: {fruits}")
print(f"frutas2: {fruits1}")
i = 0           
n = 0           #reseteamos variable
for i in len(fruits1[i]):
    if fruits[i] == fruits1[i]:
        print(f"{fruits[i]} i  equal on {fruits1[i]}")



