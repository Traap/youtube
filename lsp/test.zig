const std = @import("std");
const FIBONACCI_MAX: u64 = 43;

fn fibonacci(n: u64) u64 {
    if (n <= 1) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.writeAll("Shout to Brian Kernighan: Hello World!\n");
    try stdout.writeAll("Fibonacci sequence using recursion in Zig:\n");

    var i: u64 = 0;
    while (i <= FIBONACCI_MAX) {
        try stdout.print("{} : {}\n", .{ i, fibonacci(i) });
        i += 1;
    }
}
