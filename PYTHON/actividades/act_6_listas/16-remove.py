fruits = []                 # Añade elementoa a la lista "fruits"
n = int(input("hoy many words?: "))
for i in range(n):
    wrd = str(input(f"Type a Word{i+1}: "))
    fruits.append(wrd)      # Append añade al final de la lista
print(fruits)
rem = input("want remove somecing?")
while rem in fruits:
    fruits.remove(rem)
print(rem+ f" ha sido eliminado de la lista = {fruits}" )