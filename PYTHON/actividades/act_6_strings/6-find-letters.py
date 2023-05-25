text = input('Type a sentence: ')
src = input('search: ')
f = text.find(src)

if f == -1:
    print("Not find the letter " +src+ " in the sentence")
else:
   print("Found letter " +src+ " in te sentence!")