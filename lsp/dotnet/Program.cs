// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C#.
class Program
{

    public static int FIBONACCI_MAX = 35;

    public static void Main(String[] arga)
    {
        Console.WriteLine("Shoutout to Brian Kernighan: Hello World!");

        Console.WriteLine("Fibonacci sequence using recursion in C#:");
        for (int i = 0; i <= FIBONACCI_MAX; i++)
        {
            Console.Write("{0} : {1}\n", i, Fibonacci(i));
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
