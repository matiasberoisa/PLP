tparcial :: (Int, Int) -> Int -> Int
tparcial (n, m) c
  | n <= m && n >= 1 && c > 0 = concatenar (n, m) c
  | otherwise = 0

concatenar :: (Int, Int) -> Int -> Int
concatenar (n, m) c
  | tope >= limite = show n ++ concatenarDigito n (i + 1)
  | otherwise = 0
  where
    tope = m
    limite = n
    sumador = sumatoria n m c

sumatoria :: Int -> Int -> Int -> Int
sumatoria n m c = divisor / dividendo
  where
    divisor = potenciaTriple n + (5 * c)
    dividendo = (n * 2) + (c - 1)

potenciaTriple :: Int -> Int
potenciaTriple x = x * x * x

main :: IO ()
main = do
  putStrLn $ "tparcial (2, 4) 3: " ++ show (tparcial (2, 4) 3)
