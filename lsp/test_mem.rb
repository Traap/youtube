# frozen_string_literal: true

FIBBONACCI_MAX = 1001

def fibonacci(nbr, memo = {})
  return nbr if nbr <= 1
  memo[nbr] ||= fibonacci(nbr - 1, memo) + fibonacci(nbr - 2, memo)
end

puts 'Shoutout to Brian Kernighan: Hello World!'
puts 'Fibonacci sequence using memoized recursion in Ruby:'

FIBBONACCI_MAX.times do |idx|
  puts "#{idx} : #{fibonacci(idx)}"
end
