# Write your code here
def my_trim(str=''):
    tmp = ''
    for i in range(len(str)):
        if str[i] != ' ':
            break
    for j in range(len(str)-1, -1, -1):
        if str[j] != ' ':
            break
    for k in range(i, j+1):
        tmp += str[k]
    return tmp


print('*' + my_trim('   see you later   ') + '*')