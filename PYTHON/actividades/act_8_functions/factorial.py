def factorial (n):
        fact = 1
        for i in range(n, 0, -1):
            fact *= i
        return fact
        
print(factorial(6))  
print(factorial(7))  
print(factorial(21))  
print(factorial(45))  
print(factorial(4))  
print(factorial(33))  