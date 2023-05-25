h = 0 #width
i = 0 #inner loop
j = 0 #outer loop
h = int(input("Input a height for the triangle: "))
for i in range(1, h + 1):
    for j in range(h - i, 0, -1):
            print(' ',end='')
            for j in range(1, i*2):
                print('*', end=''),
            print('')