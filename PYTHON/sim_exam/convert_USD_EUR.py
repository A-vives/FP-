
EUR = float()
USD = float()
def EUR_USD(a):
    USD = (a * 1.1)        # Formula para pasar de DOLARES A EUROS
    return format(USD, '.6f')   #Devolvemos el resultado de la funcion con formato de 6 decimales (se puede modificar, se veria mas claro solo con 2 decimales)

def USD_EUR(b):
    EUR = (b * 0.91)       # Formula para pasar de EUROS A DOLARES
    
    return format(EUR, '.6f')   #Devolvemos el resultado de la funcion con formato de 6 decimales (se puede modificar, se veria mas claro solo con 2 decimales)   

def quit():                 #Funcion para salir
    exit
    
sel = input("Type 'd' to exchange from dollars to euro, 'e' to exchange from euro to dollar, and 'q' to quit the program:")

if sel == 'd':
    eu = float(input("Input $: "))          #Pedimos el valor de los DOLARES
    print(f"{eu}$ son: {USD_EUR(eu)}€")     #Escribimos en pantalla el resultado con la funcion
    
if sel == 'e':
    us = float(input("Input €: "))          #Pedimos el valor en EUROS
    print(f"{us}€ son:{EUR_USD(us)}$")      #Escribimos en pantalla el resultado con la funcion
if sel == 'q':
    quit
