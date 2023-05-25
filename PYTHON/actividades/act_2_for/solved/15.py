import random
import time
random.seed(time.time())
min_num = int(input('Lower number: '))
max_num = int(input('Upper number: '))
secret_num = random.randint(min_num, max_num)
times = 0
print('Guess a number between %d and %d' % (min_num, max_num))
num = int(input('Type a number: '))
while num != secret_num:
    times = times + 1
if num > secret_num:
    num = int(input('Very high! Try again: '))
else:
    num = int(input('Very low! Try again: '))
    print('You won! You tried it %d times.' % times)import random
import time
random.seed(time.time())
min_num = int(input('Lower number: '))
max_num = int(input('Upper number: '))
secret_num = random.randint(min_num, max_num)
times = 0
print('Guess a number between %d and %d' % (min_num, max_num))
num = int(input('Type a number: '))
while num != secret_num:
    times = times + 1
if num > secret_num:
    num = int(input('Very high! Try again: '))
else:
    num = int(input('Very low! Try again: '))
    print('You won! You tried it %d times.' % times)