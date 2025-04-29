piAproxNewton :: Int -> (Double, Double)
piAproxNewton n = (diferencia n, pi - diferencia n)

diferencia :: Int -> Double
diferencia n = ((3 * sqrt 3) / 4) + 2 - (3 / 4) * sumatoria 0 n

sumatoria :: Int -> Int -> Double
sumatoria j n
  | j == n = resultado
  | j < n = resultado + sumatoria (j + 1) n
  where
    resultado = binomio (2 * j) j / (fromIntegral ((j + 1) * (2 * j + 5)) * (16 ^ j))

binomio :: Int -> Int -> Double
binomio p r = fromIntegral (factorial p) / fromIntegral (factorial r * factorial (p - r))

factorial :: Int -> Int
factorial x
  | x == 0 = 1
  | otherwise = x * factorial (x - 1)

main :: IO ()
main = do
  putStrLn $ "piAproxNewton 5: " ++ show (piAproxNewton 5)