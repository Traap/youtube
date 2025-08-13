# frozen_string_literal: true

FIBBONACCI_MAX = 43

# Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Ruby.

def fibonacci(nbr)
  return nbr if nbr <= 1

  fibonacci(nbr - 1) + fibonacci(nbr - 2)
end

puts 'Shoutout to Brian Kernighan: Hello World!'

puts 'Fibonacci sequence usng recursion in Ruby:'
FIBBONACCI_MAX.times do |idx|
  puts "#{idx} : #{fibonacci(idx)} "
end
