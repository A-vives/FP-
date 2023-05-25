num1= int(input("inserte un numero:"))
fact = 1
for i in range(num1, 0, -1):
    fact *= i
print('factorial of number %d is %d'%(num1, fact))


