-- Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Lua.

function Fibonacci(n)
	if n <= 1 then
		return n
	end

	return Fibonacci(n - 1) + Fibonacci(n - 2)
end

print("Hello World!")

print("Fibonacci sequence using recursion in Lua:")
for i = 0, 10 do
	io.write(Fibonacci(i) .. " ")
end
print("\n")
