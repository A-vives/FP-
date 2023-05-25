import random
import time
random.seed(time.time() )
NUM_ATTEMPTS = 7
attepts = 0
list = ['programmer', 'elephant', 'chetaah']
attp_list = []
secret_num = random.randint(0, len(list)-1)

secret = list[secret_num]
found = False
print(secret)
print()
print('-----------------------------------------')
print('----------JUEGO DEL AHORCADO-------------')
print('-----------------------------------------')
lista = []
for i in range(len(secret)):
    lista.append('-')
print(lista)

while attepts <= NUM_ATTEMPTS and '-' in lista:
    print('-----------------------------------------')
    print(f"Numero de intentos = {attepts}/{NUM_ATTEMPTS}")
    print(f"tus intentos: {attp_list}")
    print()
    char = input("type a char: ")
    attp_list.append(char)
    found = True
    print(attp_list)
    for i in range(len(secret)):
        if secret[i] == char:
            lista.pop(i)
            lista.insert(i, char)
            found = True
    if found == False:
        attepts += 1
    if attepts == 7:
        print('-----------------------------------------')
        print('-----------Has sido colgado!!!-----------')
        print('---------------HAS PERDIDO---------------')
if '-' not in lista:
    print('-----------------------------------------')
    print('----------Has acertado todas!!!----------')
    print('---------------HAS GANADO----------------')