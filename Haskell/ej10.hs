cuartaPotencia :: (Num int) => int -> int
cuartaPotencia x =
  potencia
  where
    potencia = sq (sq x)

sq :: (Num int) => int -> int
sq x = x * x

main :: IO ()
main = do
  putStrLn $ "cuarta potencia de 2: " ++ show (cuartaPotencia 2)
  putStrLn $ "cuarta potencia de 3: " ++ show (cuartaPotencia 3)
  putStrLn $ "cuarta potencia de 4: " ++ show (cuartaPotencia 4)
  putStrLn $ "cuarta potencia de 10: " ++ show (cuartaPotencia 10)