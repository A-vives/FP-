numbers = ''
num = '*' # Random initial value
while num != "":
    num = str(input("Input a number: "))
try:

    int(num)
    numbers += num + ' '
except:
    print('Wrong number. Try again.')
    print('Then numbers are: ')
    print(numbers)