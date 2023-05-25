
height = int(input("Enter the width of the triangle: "))



for i in range(height, 0, -1):
    for j in range(i):
        print('*', end='')
    print()