repetir :: Int -> String
repetir n
  | n > 0 = repetir (div n 10) ++ valor
  | otherwise = ""
  where
    valor = concatenarDigito (mod n 10) 1

concatenarDigito :: Int -> Int -> String
concatenarDigito n i
  | i <= n = show n ++ concatenarDigito n (i + 1)
  | otherwise = "-"

main :: IO ()
main = do
  putStrLn $ "repetir numero 1534: " ++ show (repetir 1534)
  putStrLn $ "repetir numero 2323: " ++ show (repetir 2323)
  putStrLn $ "repetir numero 0: " ++ show (repetir 0)
  putStrLn $ "repetir numero 150: " ++ show (repetir 150)