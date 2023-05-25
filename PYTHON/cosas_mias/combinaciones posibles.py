#import math
#
#l = ['A', 'B', 'C', 'D', 'E']
#n = len(l)
#r = n - 1
#num_combinations_con_a = math.factorial(n) // (math.factorial(r) * math.factorial(n-r))
#print(num_combinations_con_a)

from datetime import datetime

l = ['A','B','C','D','E','D','E','F',
     'G','H','I','J','K','L','M','N',
     'O','P','Q','R','S','T','U','V',
     'W','X','Y','Z']

# Contar las permutaciones que no contienen la letra 'A'
other_perms = 1
for i in range(len(l) - 1):
    other_perms *= (i + 1)
num_other_perms = other_perms

# Contar las formas en que se puede insertar la letra 'A' en una permutación
num_a_positions = len(l)
num_a_perms = num_a_positions * other_perms

# Imprimir los resultados
now = datetime.now()
print(f"Este test empieza ahora: {now}")
print(f"El número total de permutaciones es: {num_a_perms}")
later = datetime.now()
diff = later - now
print(f"El cálculo tardó: {diff}")
