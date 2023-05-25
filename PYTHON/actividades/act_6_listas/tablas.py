table = [['0-0','0-1', '0-2'], ['1-0','1-1', '1-2'], ['2-0','2-1', '2-2']]


for i in range(len(table)):     
    print(table[i])

'''
['0-0', '0-1', '0-2']
['1-0', '1-1', '1-2']
['2-0', '2-1', '2-2']
'''
for i in range(len(table)):
    for j in range(len(table[i])):
        print(table[i][j])
'''
0-0
0-1
0-2
1-0
1-1
1-2
2-0
2-1
2-2
0
1
2
'''