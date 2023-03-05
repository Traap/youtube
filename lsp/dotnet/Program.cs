// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C#.
class Program
{
    public static void Main(String[] arga)
    {
        Console.WriteLine("Hello World!");

        Console.WriteLine("Fibonacci sequence using recursion in C#:");
        for (int i = 0; i <= 10; i++)
        {
            Console.Write("{0} ", Fibonacci(i));
        }
        Console.WriteLine();
    }

    static int Fibonacci(int n)
    {
        if (n == 0 || n == 1)
        {
            return n;
        }

        return Fibonacci(n - 1) + Fibonacci(n - 2);
    }
}
