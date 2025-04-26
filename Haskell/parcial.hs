tparcial :: (Int, Int) -> Int -> String
tparcial (n, m) c
  | n <= m && n >= 1 && c > 0 = concatenar (n, m) c
  | otherwise = ""

concatenar :: (Int, Int) -> Int -> String
concatenar (n, m) c
  | n <= m = concatenar (n, m - 1) c ++ show m ++ "     " ++ show (sumatoria m c) ++ " "
  | otherwise = ""

sumatoria :: Int -> Int -> Float
sumatoria k c
  | k > 0 = fromIntegral (div divisor dividendo) + sumatoria (k - 1) c
  | otherwise = 0
  where
    divisor = fromIntegral (potenciaTriple k + (5 * c))
    dividendo = fromIntegral ((k * 2) + (c - 1))

potenciaTriple :: Int -> Int
potenciaTriple x = x * x * x

main :: IO ()
main = do
  putStrLn $ "tparcial (2, 4) 3: " ++ show (tparcial (2, 4) 3)
