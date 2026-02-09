# frozen_string_literal: true

FIBBONACCI_MAX = 1001

fib = Enumerator.new do |y|
  a = 0
  b = 1

  loop do
    y << a
    a, b = b, a + b
  end
end

puts 'Shoutout to Brian Kernighan: Hello World!'
puts 'Fibonacci sequence using Enumerator in Ruby:'

fib.take(FIBBONACCI_MAX).each_with_index do |value, idx|
  puts "#{idx} : #{value}"
end
