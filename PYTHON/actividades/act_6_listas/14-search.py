fruits = []     #Añade elementos a la lista
n = int(input("hoy many words?: "))
for i in range(n):
    wrd = str(input(f"Type a Word {i+1}: "))
    fruits.append(wrd)
print(fruits)
find = input("want search somecing?")
pos = fruits.count(find)    #Busca en la lista y te da la cantidad
print(pos)