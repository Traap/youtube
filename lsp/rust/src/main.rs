// Shout to Brian Kernagan and Fibonacci sequence done with Rust.
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

fn main() {
    println!("Shoutout to Brian Kernighan: Hello World!");

    println!("Fibonacci sequence using recursion in Rust:");
    for i in 0..48 {
        println!("{} : {} ", i, fibonacci(i));
    }
    println!()
}
