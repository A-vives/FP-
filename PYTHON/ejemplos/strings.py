sentence = input("Type a sentence: ")
vowel = input("Vowel to change: ")
new_sentence = ''
for i in range(len(sentence)):
    if sentence[i] == 'a' or sentence[i] == 'e' or sentence[i] == 'i' or sentence[i] == 'o' or sentence[i] == 'U':
        new_sentence += vowel.lower()
    elif sentence[i] == 'A' or sentence[i] == 'E' or sentence[i] == 'I' or sentence[i] == 'O' or sentence[i] == 'U':
        new_sentence += vowel.upper() 
    else:
        new_sentence += sentence[i]
    print(new_sentence)