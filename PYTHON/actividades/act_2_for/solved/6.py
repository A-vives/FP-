h = 0 #height
i = 0 #outer loop
j = 0 #inner loop
h = int(input("Input a height: "))
for i in range(1, h + 1):
    for j in range(1, i + 1):
        print('*', end='')
    print('')