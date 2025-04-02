{-# LANGUAGE AllowAmbiguousTypes #-}

factorialTable :: Int -> Int -> String
factorialTable m n
  | m >= n = valores
  | otherwise = "0"
  where
    valores = secuencia (m, n)

secuencia :: (Int, Int) -> String
secuencia (m, n)
  | m > n = show (factorial m) ++ " " ++ secuencia (m - 1, n)
  | otherwise = ""

factorial :: (Ord int, Num int) => Int -> Int
factorial n
  | n > 1 = n * factorial (n - 1)
  | otherwise = 1

main :: IO ()
main = do
  putStrLn $ "tabla de 5 a 3: " ++ show (factorialTable 5 3)
  putStrLn $ "tabla de 1 a 2: " ++ show (factorialTable 1 2)
  putStrLn $ "tabla de 8 a 4: " ++ show (factorialTable 8 4)
  putStrLn $ "tabla de 10 11: " ++ show (factorialTable 10 11)