fib :: (Ord int, Num int) => int -> int
fib 0 = 0
fib 1 = 1
fib n
  | n > 1 = fib (n - 2) + fib (n - 1)
  | otherwise = 0

factorial :: (Ord int, Num int) => int -> int
factorial n
  | n > 1 = n * factorial (n - 1)
  | otherwise = 1

sucesion :: (Ord int, Num int, Fractional int) => (int, int) -> int
sucesion (x, n)
  | n >= 1 = suma + sucesion (x, n - 1)
  | otherwise = suma / resultado
  where
    suma = sq n
    resultado = factorial x

sq :: (Num int) => int -> int
sq x = x * x

main :: IO ()
main = do
  putStrLn $ "sucesion usando 3 como x y 10 como n: " ++ show (sucesion (3, 10))