#def table(): #definimos funcion tabla de multiplicar
#for j in range(11):
#    print("Tabla de multiplicar del : %d" % (j) )
#for i in range(11):
#    print("%d x %d = %d" % (i,j,i*j) )
#print()

def table(a): #definimos funcion tabla de multiplicar
    print("Tabla de multiplicar del : %d" % (a) )
    for i in range(11):
        print("%d x %d = %d" % (i,a,i*a) )
    print()
    
def alltable():
    for j in range(11):
        print("Tabla de multiplicar del : %d" % (j) )
        for i in range(11):
            print("%d x %d = %d" % (i,j,i*j) )
    print()
    
print(alltable())

for i in range (9):
    table(1)
    
a = int(input("Que numero deseas multuplicar?: "))


    
    