# Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Julia.
const FIBONACCI_MAX = 43

function fibonacci(n::Int)
  if n <= 1
    return n
  end
  return fibonacci(n - 1) + fibonacci(n - 2)
end

function main()
  println("Shoutout to Brian Kernighan: Hello World!\n")

  println("Fibonacci sequence using recursion in Julia:")
  for i in 0:FIBONACCI_MAX
    println("$(i) : $(fibonacci(i))")
  end
end

main()

