
width = int(input("Enter the width of the rectangle: "))
height = int(input("Enter the height of the rectangle: "))

for i in range(height):
    for j in range(width):
        if i == 0 or i == height - 1 or j == 0 or j == width - 1:
            print('*', end='')
        else:
            print(' ', end='')
    print()
    
