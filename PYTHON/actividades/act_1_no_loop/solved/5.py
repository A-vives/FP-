option = str(input('Write a "t" if you want to calculate the area of a triangle,or "s" if you want to calculate the area of a square:'))
if option == 't':
    height = int(input('Enter a height:'))
    base = int(input('Enter a base:'))
    print('The area of the triangle is %d.' % (height*base/2))
elif option == 's':
    base = int(input('Enter a base:'))
print('The area of the square is %d.' % (base*base))