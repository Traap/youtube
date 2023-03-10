-- Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Lua.
FIBONACCI_MAX = 20

function Fibonacci(n)
	if n <= 1 then
		return n
	end

	return Fibonacci(n - 1) + Fibonacci(n - 2)
end

print("Shoutout to Brian Kernighan: Hello World!")

print("Fibonacci sequence using recursion in Lua:")
for i = 0, FIBONACCI_MAX do
	print(i .. " : " .. Fibonacci(i))
end
