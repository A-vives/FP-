number1 = int(input('Type the first number: '));
number2 = int(input('Type the second number: '));
while (number1>=number2):
    print('The second number must be bigger!')
    number2 = int(input('Type the second number again: '));
    number3 = int(input('Type a third number between ' + str(number1) + ' and ' +str(number2) + ': '));
while (number3 < number1 or number3 > number2):
    print('The third number must belong to the interval [%d, %d]' % (number1, number2))
    number3 = int(input('Type the third number again: '));
    print('You defined the interval [%d, %d] and %d belongs to that interval.' % (number1, number2, number3))