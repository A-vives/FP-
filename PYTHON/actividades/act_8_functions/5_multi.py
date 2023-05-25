# Write your code here
def multiplication_table(n=0):
    for i in range(10):
        print('%i*%i=%i' % (i, n, i*n))


num = int(input('Type a number: '))
multiplication_table(num)
