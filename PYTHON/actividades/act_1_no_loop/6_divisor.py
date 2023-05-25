num1 = int(input("Inserta un numero: "))
num2 = int(input("Escribe un numero: "))
num3 = int(input("Escribe un numero: "))


divisor = int(input("DIVIDE POR: "))


if num1 % divisor == 0 or num2 % divisor == 0 or num3 % divisor == 0:
    print(divisor, "Es divisor de los 3 numeros.")
else:
    print(divisor, "No es divisor de nu¡inguno de los numeros.")
    