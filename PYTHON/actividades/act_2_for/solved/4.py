number = int(input('Input a number:'))
fact = 1

for i in range(1,number):
    fact = fact*(i+1)
    print(fact)