// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Java.
public class Program
{
  public static int FIBONACCI_MAX = 48;

  public static void main(String[] arga)
  {
    System.out.printf("Hello World!\n");

    System.out.printf("Fibonacci sequence using recursion in Java:\n");
    for (int i = 0; i <= FIBONACCI_MAX; i++)
    {
      System.out.printf("%d : %d \n", i, fibonacci(i));
    }
    System.out.printf("\n");
  }

  public static int fibonacci(int n)
  {
    if (n == 0 || n == 1)
    {
      return n;
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
