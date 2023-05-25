number1 = int(input('Enter a number:'));
number2 = int(input('Enter a number:'));
number3 = int(input('Enter a number:'));
divisor = int(input('Enter the divisor:'));
print('%d is divisor of:' % (divisor))
if number1 % divisor == 0:
    print(number1)
if number2 % divisor == 0:
    print(number2)
if number3 % divisor == 0:
    print(number3)
    