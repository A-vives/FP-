number = int(input("input a number: "))
print("The divisors of", number, "are:")

for i in range(1, number+1):
    if number % i == 0:
        print(i)