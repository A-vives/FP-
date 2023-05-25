# Write your code here
def my_replace(str='', chr1='', chr2=''):
    tmp = ''
    for char in str:
        if char == chr1:
            tmp += chr2
        else:
            tmp += char
    return tmp


print(my_replace('see you later', 'e', 'i'))