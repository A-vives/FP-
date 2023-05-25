
from itertools import permutations
from datetime import datetime
from tqdm import tqdm
now = datetime.now()
print(f"Este test empieza ahora{now}")
l = ['A','B','C','D','E','D','E','F']
     #'G','H','I','J','K','L','M','N']
     #'O','P','Q','R','S','T','U','V',
     #'W','X','Y','Z']
num_permutations_con_a = 0
times = []
total = len(list(permutations(l)))
with tqdm(total_pero=total) as pbar:
    for p in permutations(l): #Buscará en el resultado de las permutaciones los que contengan A(todos)
        if 'A' in p:
            num_permutations_con_a += 1
            times.append(datetime.now())
        pbar.update(1)
later = datetime.now()
diff = later - now
print(num_permutations_con_a)
print(len(times))

print(f"ha tardado{diff}")