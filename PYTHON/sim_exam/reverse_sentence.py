sentence = input("Type a sentence: ")
r_sentence = ""
for i in range(len(sentence)-1, -1, -1):    # For que hace saltos hacia atrás
    r_sentence += sentence[i]               # Construimos la frase
capitalized_sentence = r_sentence.title()  # Ponemos mayusculas a la primera palabra
print(capitalized_sentence)