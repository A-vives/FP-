sel = input("que quieres calcular? t-triangle s-sqare")



if sel == "t":
    base = float(input("Escribe la base del triangulo: "))
    height = float(input("Escribe la altura del triangulo: "))
    area = 0.5 * base * height
    print("El area de tu triangulo es:", area)
elif sel == "s":
    side = float(input("Escribe un lado del cuadrado: "))
    area = side * side
    print("El area de tu cuadrado es:", area)
else:
    print("Seleccion Inválida.")
