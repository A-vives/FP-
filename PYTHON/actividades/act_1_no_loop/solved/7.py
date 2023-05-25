amount = int(input('Enter an amount:'));
if amount % 5 == 0:
    print('Amount of 500€ bills: %d.' % (amount // 500))
    amount = amount % 500
    print('Amount of 200€ bills: %d.' % (amount // 200))
    amount = amount % 200
    print('Amount of 100€ bills: %d.' % (amount // 100))
    amount = amount % 100
    print('Amount of 50€ bills: %d.' % (amount // 50))
    amount = amount % 50
    print('Amount of 20€ bills: %d.' % (amount // 20))
    amount = amount % 20
    print('Amount of 5€ bills: %d.' % (amount // 5))
    amount = amount % 5
else:
    print('This ATM does not have coins!');
    