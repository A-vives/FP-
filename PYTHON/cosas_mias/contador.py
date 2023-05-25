cont = [1,1,1,1,1]
#si n es menor que 0 por n en count
#if any(n > 0 for n in cont): # va a ir recorriendo la lista y si hay uno que sea menor a 0 printea 1 success
#    print("hola")
#else:
#    print("nope")
def comparator(va, com):
        if any(n > com for n in va): #este lo hace cuando TODOS son menores que 0
            return print("hola")
        else:
            return print("nope")
                
comparator(cont, 1)


print(cont)
