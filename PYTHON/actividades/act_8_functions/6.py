letter = str("")
def upperc(letter):
    for i in len(letter):
        print(str(ord(letter)-32))
    
de = input(str("Dime un texto!: "))

print(upperc(de))