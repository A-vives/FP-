def tabla(num=1):
    for i in range(10):
        
        print("%i · %i=%i" % (i+1, num, (i+1)*num))
    print(f"tabla del {i}")
        

for i in range(1, 10, 1):
    tabla(i)
    