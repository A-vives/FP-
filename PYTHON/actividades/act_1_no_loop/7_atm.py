amount = int(input("Enter an amount in euros: "))
if amount % 500 == 0:
    print("El cajero te paga con un billete de 500€")
elif amount % 200 == 0:
    print("El cajero te paga con un billete de 200€")
elif amount % 100 == 0:
    print("El cajero te paga con un billete de 100€")
elif amount % 50 == 0:
    print("El cajero te paga con un billete de 50€")
elif amount % 20 == 0:
    print("El cajero te paga con un billete de 20€")
elif amount % 10 == 0:
    print("El cajero te paga con un billete de 10€")
elif amount % 5 == 0:
    print("El cajero te paga con un billete de 5€")
else:
    print("El cajero no puede darte cambio de esa cantidad.")