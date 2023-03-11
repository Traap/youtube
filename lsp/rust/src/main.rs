// Shout to Brian Kernagan and Fibonacci sequence done with Rust.
const FIBONACCI_MAX: i32 = 35;

fn fibonacci(n: i32) -> i32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

fn main() {
    println!("Shoutout to Brian Kernighan: Hello World!");

    println!("Fibonacci sequence using recursion in Rust:");
    for i in 0..FIBONACCI_MAX {
        println!("{} : {} ", i, fibonacci(i));
    }
    println!()
}
