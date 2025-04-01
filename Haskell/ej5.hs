fib :: (Ord int, Num int) => int -> int
fib 0 = 0
fib 1 = 1
fib n
  | n > 1 = fib (n - 2) + fib (n - 1)
  | otherwise = 0

main :: IO ()
main = do
  putStrLn $ "suma de fibonacci: " ++ show (fib 7)