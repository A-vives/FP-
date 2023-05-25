number = 0
string = "" # string to keep the divisors
i = 0 # loop variable
number = int(input('Input a number: '))
for i in range(1, number + 1):
    if number % i == 0: 
        string = string + str(i) + ' '
        print('The divisors of %d are %s' % (number, string))