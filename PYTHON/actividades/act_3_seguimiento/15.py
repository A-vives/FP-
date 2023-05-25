import random
import time
random.seed(time.time() )
min_num = int(input("Lower number: "))
max_num = int(input("Max numbre: "))
secret_num = random.randint(min_num, max_num)
attp = 1
sel = int(input('Dime un numero entre %d y %d:' % (min_num, max_num)))
print(secret_num)
sel = min_num -1
while sel != secret_num:
    attp += 1 
    if sel > secret_num:
        print("Is High")
        print("intento nº%d" % (attp))
    elif sel < secret_num:
        print("Is low!")
        print("intento nº%d" % (attp))
    
    sel = int(input('Dime un numero entre %d y %d:' % (min_num, max_num)))
print("YOU WON!!! with %d attepts" % (attp))