# frozen_string_literal: true

FIBBONACCI_MAX = 1001

def fibonacci(nbr)
  return nbr if nbr <= 1

  a = 0
  b = 1

  (2..nbr).each do
    a, b = b, a + b
  end

  b
end

puts 'Shoutout to Brian Kernighan: Hello World!'
puts 'Fibonacci sequence using iteration in Ruby:'

FIBBONACCI_MAX.times do |idx|
  puts "#{idx} : #{fibonacci(idx)}"
end
