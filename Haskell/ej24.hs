repetir :: Int -> String
repetir n
  | n > 0 = repetir (div n 10) ++ "-" ++ valor
  | otherwise = ""
  where
    valor = concatenarDigito (mod n 10) (mod n 10)

concatenarDigito :: Int -> Int -> String
concatenarDigito n i
  | i > 0 = concatenarDigito n (i - 1) ++ show n
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "repetir numero 1534: " ++ show (repetir 1534)
  putStrLn $ "repetir numero 2323: " ++ show (repetir 2323)
  putStrLn $ "repetir numero 0: " ++ show (repetir 0)
  putStrLn $ "repetir numero 150: " ++ show (repetir 150)