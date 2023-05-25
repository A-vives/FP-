import random
vowels = "aeiou"
sel = ''
while sel == '' or sel =='q':
    sel = input("Press 'Enter' to generate random vowel or 'q' to quit:" )
    if sel == '':
        rand = random.choice(vowels)
        print(rand)
    if sel == 'q':
        break
        
        