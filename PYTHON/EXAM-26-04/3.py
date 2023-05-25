char = []                 # Añade elementoa a la lista 
n = int(input("Type number of characters: "))
t = ''
for i in range(n):
    wrd = str(input(f"Type the character number {i+1}: "))
    char.append(wrd)
    t += wrd

print(f"This list is:{char}")
print(f"The list conferted un word is {t}")
        