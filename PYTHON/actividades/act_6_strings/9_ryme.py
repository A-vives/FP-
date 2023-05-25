word1 = input("Type a word: ")
word2 = input("Type another word: ")
if word1[-3:] == word2[-3:]:        #Compara las [tres ultimas letras] De las estrings
    print(f'{word1} and {word2} ryme')
elif word1[-2:] == word2[-2:]:      #Compara las [dos ultimas letras] De las estrings
    print(f'{word1} and {word2} ryme a little')
else:
    print(f'{word1} and {word2} definitly not ryme') 