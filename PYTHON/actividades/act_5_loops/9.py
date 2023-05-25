height = int(input("Enter the width of the triangle: "))

for i in range(height):
    print(" "*(height-i-1) + "*"*(2*i+1))