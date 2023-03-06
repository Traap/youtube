# Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Python.


# Fibonacci sequence done with Python.
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)


print("Hello World!")

print("Fibonacci sequence using recursion in Python:")
for i in range(1, 11):
    print(fibonacci(i), end=' ')
print('')
