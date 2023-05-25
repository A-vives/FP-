i=0
sentence = []
for i in range(9):
    sentence.append("""INSERT INTO VENDORS (id, name) VALUES (%d, '%s')""" % (i, 'name ' +str(i)))
print(sentence[3])