# Shout Out to Brian Kernighan
print("Hello World!")


# Fibonacci sequence done with Python.
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)


# Hum! Blank lines to shutup formatter.
print(fibonacci(10))
