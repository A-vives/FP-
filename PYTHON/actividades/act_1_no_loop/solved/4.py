a = int(input('Enter a number:'))
b = int(input('Enter a number:'))
c = int(input('Enter a number:'))
if a<b and b<c:
    print('%d, %d, and %d are in increasing order.' % (a, b, c))
elif c<b and b<a:
    print('%d, %d, and %d are decreasing order.' % (a, b, c))
else:
    print('%d, %d, and %d are in disorder order.' % (a, b, c))
    
    