-- Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Haskell.

-- Recursive Fibonacci sequence to print the index and associated Fibonacci
-- number.
fibonacci :: Int -> IO ()
fibonacci n = mapM_ putStrLn $ map formatFib $ take n $ zip [1..] fibs
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
    formatFib (i, n) = show i ++ ": " ++ show n

-- Program to print a Fibonacci sequence.
main :: IO ()
main = do
  putStrLn "Shoutout to Brian Kernighan: Hello World!"
  putStrLn "Fibonacci sequence using recursion in Haskell."
  fibonacci 35
