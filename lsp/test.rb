# Shoutout to Brian Kernighan
puts "Hello World!"

# Fibonacci sequence done with Ruby.
def fibonacci(n)
  return n if n <= 1
  fibonacci(n-1) + fibonacci(n-2)
end

# Calculate the Fibonacci sequence.
puts fibonacci(10)
