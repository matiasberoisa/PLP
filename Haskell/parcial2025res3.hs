perfecto :: Int -> Bool
perfecto n
  | n > 0 && calcDivisores n 1 0 = True
  | otherwise = False

calcDivisores :: Int -> Int -> Int -> Bool
calcDivisores n valor res
  | n == res = True
  | n > res = calcDivisores n (valor + 1) (res + esDivisor n valor)
  | otherwise = False

esDivisor :: Int -> Int -> Int
esDivisor n divisor
  | mod n divisor == 0 = divisor
  | otherwise = 0

main :: IO ()
main = do
  putStrLn $ "6 es perfecto?: " ++ show (perfecto 6)
  putStrLn $ "11 es perfecto?: " ++ show (perfecto 11)