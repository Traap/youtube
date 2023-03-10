-- Fibonacci sequence using recursion.

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
  fibonacci 11
