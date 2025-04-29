piAproxNewton :: Int -> (Double, Double)
piAproxNewton n = (diferencia n, pi - diferencia n)

diferencia :: Int -> Double
diferencia n = ((3 * sqrt 3) / 4) + 2 - (3 / 4) * sumatoria n

sumatoria :: Int -> Double
sumatoria n
  | n > 0 = resultado + sumatoria (n - 1)
  | otherwise = resultado
  where
    resultado = calcBinomio (2 * n, n) / fromIntegral ((n + 1) * (2 * n + 5) * (16 ^ n))

suma :: Int -> Int -> Double
suma j n
  | j == n = resultado
  | j < n = resultado + suma (j + 1) n
  where
    resultado = calcBinomio (2 * j, j) / (fromIntegral ((j + 1) * (2 * j + 5)) * (16 ^ j))

calcBinomio :: (Int, Int) -> Double
calcBinomio (p, r) = fromIntegral (fact p) / fromIntegral (fact r * fact (p - r))

fact :: Int -> Int
fact n
  | n > 0 = n * fact (n - 1)
  | otherwise = 1

main :: IO ()
main = do
  putStrLn $ "piAproxNewton 5: " ++ show (piAproxNewton 5)
