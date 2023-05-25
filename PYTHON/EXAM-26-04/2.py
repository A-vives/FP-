my_list = [1, 2.1, "o","q", "r", 7, 9]
numbers = []
isn = ''
isnn = ''
for i in range(len(my_list)):
    isn = isinstance(my_list[i], int)
    isnn = isinstance(my_list[i], float)
    if isn is True:
        numbers.append(my_list[i])   
    if isnn is True:
        numbers.append(my_list[i])
        
cant_numbers = len(numbers)
avg = sum(numbers)/int(len(numbers))
print(f"The average of the {cant_numbers} is {avg}")
