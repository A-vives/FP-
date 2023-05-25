'''Make a program that creates a list (words typed by the user)
and that counts all the vowels in all the words of the list.'''


word = input("Type a sentence: ")
# word = word.lower()
wordl = word.split()

a = word.lower().count("a")
e = word.lower().count("e")
i = word.lower().count("i")
o = word.lower().count("o")
u = word.lower().count("u")

print("a=", a, "e=", e, "i=", i, "o=", o, "u=", u) 
print(wordl)

