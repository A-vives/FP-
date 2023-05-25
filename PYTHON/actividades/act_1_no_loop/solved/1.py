
a = int(input('Enter a number:'))
b = int(input('Enter a number:'))
c = int(input('Enter a number:'))
if a>b and a>c:
    print('%d is the largest' % (a))
elif b>a and b>c:
    print('%d is the largest' % (b))
else:
    print('%d is the largest' % (c))


a = int(input('Introduzca un número:'))
b = int(input('Introduzca un número:'))
c = int(input('Introduzca un número:'))
aux=a
if b>aux:
    aux = b
if c>aux:
    aux = c
print('%d is the largest' % (aux))