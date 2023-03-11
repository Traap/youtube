-- Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Haskell.

-- This Works.
fibonacci :: Int -> IO ()
fibonacci n = mapM_ putStrLn $ map show $ take n fibs
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Does not compile.
-- fibonacci :: Int -> IO ()
-- fibonacci n = mapM_ putStrLn $ map formatFib $ take n fibs
--   where
--     fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
--     formatFib (i, n) = show i ++ ": " ++ show n

-- Program to print a Fibonacci sequence.
main :: IO ()
main = do
  putStrLn "Shoutout to Brian Kernighan: Hello World!"
  putStrLn "Fibonacci sequence using recursion in Haskell."
  fibonacci 35
