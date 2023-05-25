num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
num3 = float(input("Enter third number: "))


if num1 > num2 > num3:
    print("The numbers are in decreasing order.")
elif num1 < num2 < num3:
    print("The numbers are in increasing order.")
else:
    print("The numbers are in disordered order.")
    