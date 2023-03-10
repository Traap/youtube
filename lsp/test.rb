# frozen_string_literal: true

# Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Ruby.

def fibonacci(nbr)
  return nbr if nbr <= 1

  fibonacci(nbr - 1) + fibonacci(nbr - 2)
end

puts 'Shoutout to Brian Kernighan: Hello World!'

puts 'Fibonacci sequence usng recursion in Ruby:'
49.times do |idx|
  puts "#{idx} : #{fibonacci(idx)} "
end
