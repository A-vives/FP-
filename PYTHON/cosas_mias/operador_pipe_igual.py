hola = {
    'name' : 'N/A',
    'email' : 'N/A',
    'phone' : 'N/A',
}
hola_user = {
    'name' : 'francis',
    'phone' : '666-666-6661',
}
hola |= hola_user # nos rellena hola con la informacion de hola_user nueva que le ha llegado para actualizar los datos 
print(hola)
