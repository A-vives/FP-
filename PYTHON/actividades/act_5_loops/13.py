numbers = ""
while True:
    try:
        num = int(input("Enter a number (or press Enter to finish): "))
        numbers += str(num) + " "
    except ValueError:
        if not numbers:                     
            continu
        else:
            break
        
print("Numbers entered:", numbers)