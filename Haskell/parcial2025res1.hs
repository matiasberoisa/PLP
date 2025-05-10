perfecto :: Int -> Bool
perfecto n
  | n > 0 && calcDivisores n (n - 1) 0 = True
  | otherwise = False

calcDivisores :: Int -> Int -> Int -> Bool
calcDivisores n divisor suma
  | n == suma && divisor == 0 = True
  | n > suma && divisor > 0 = calcDivisores n (divisor - 1) (suma + esDivisor n divisor)
  | otherwise = False

esDivisor :: Int -> Int -> Int
esDivisor n divisor
  | mod n divisor == 0 = divisor
  | otherwise = 0

main :: IO ()
main = do
  putStrLn $ "6 es perfecto?: " ++ show (perfecto 6)
  putStrLn $ "28 es perfecto?: " ++ show (perfecto 28)