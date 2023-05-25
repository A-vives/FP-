# Write your code here
def multiplication_table(n=0):
    for i in range(10):
        print('%i*%i=%i' % (i, n, i*n))


for i in range(9):
    multiplication_table(i+1)
