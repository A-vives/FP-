a = int(input('Enter a number:'))
b = int(input('Enter a number:'))
c = int(input('Enter a number:'))

if a>b and a>c:
    print('%d is the largest' % (a))
elif b>a and b>c:
    print('%d is the largest' % (b))
else:
    print('%d is the largest' % (c))
if a<b and a<c:
    print('%d is the smallest' % (a))
elif b<a and b<c:
    print('%d is the smallest' % (b))
else:
    print('%d is the smallest' % (c))