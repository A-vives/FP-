a = input("Type a sentence: ")
v = input("Vowel to change: ")
vowels = 'AEIOUaeiou'
for i in vowels:
    a = a.replace(i, v) 
print(a)