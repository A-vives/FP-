number1 = 0
number2 = 0
number1 = int(input('Input the first number: '))
number2 = int(input('Input a number bigger than ' + str(number1) + ': '))
while number1 >= number2:
    print('The second number must be bigger!!')
    number2 = int(input('Input the second number again: '))
    print('The number that you wrote were %d and %d.' % (number1, number2))