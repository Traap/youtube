# Default rule: run everything that exists on this machine
all: run-c run-cpp run-hs run-java run-jl run-js run-lua run-py run-rb run-ts run-zig

.PHONY: all clean \
        run-c run-cpp run-hs run-java run-jl run-js run-lua run-py run-rb run-ts run-zig

TIME := /usr/bin/time -p

# Clean build artifacts
clean:
	@echo "Cleaning..."
	rm -rf _build
	rm -f a_c a_cpp Test.class *.hi *.o a_ts a_zig a_hs

# C
run-c: test.c
	@echo "Test Fibonacci sequence using recursion in C"
	@clang test.c -o a_c
	@$(TIME) ./a_c

# C++
run-cpp: test.cpp
	@echo "Test Fibonacci sequence using recursion in C++"
	@clang++ test.cpp -o a_cpp
	@$(TIME) ./a_cpp

# Haskell
run-hs: test.hs
	@echo "Test Fibonacci sequence using recursion in Haskell"
	@ghc -o a_hs test.hs
	@$(TIME) ./a_hs

# Java  (assumes class with main is named 'test' in test.java)
run-java: test.java
	@echo "Test Fibonacci sequence using recursion in Java"
	@$(TIME) java test.java

# Julia
run-jl: test.jl
	@echo "Test Fibonacci sequence using recursion in Julia"
	@$(TIME) julia test.jl

# JavaScript (Node)
run-js: test.js
	@echo "Test Fibonacci sequence using recursion in JavaScript"
	@$(TIME) node test.js

# Lua
run-lua: test.lua
	@echo "Test Fibonacci sequence using recursion in Lua"
	@$(TIME) lua test.lua

# Python
run-py: test.py
	@echo "Test Fibonacci sequence using recursion in Python"
	@$(TIME) python3 test.py

# Ruby
run-rb: test.rb
	@echo "Test Fibonacci sequence using recursion in Ruby"
	@$(TIME) ruby test.rb

# TypeScript (requires ts-node or tsx; here we use ts-node)
run-ts: test.ts
	@echo "Test Fibonacci sequence using recursion in TypeScript"
	@$(TIME) ts-node test.ts

# Zig
run-zig: test.zig
	@echo "Test Fibonacci sequence using recursion in Zig"
	@$(TIME) zig run test.zig

