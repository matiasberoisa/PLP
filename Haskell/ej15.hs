duplicar :: String -> Int -> String
duplicar n i
  | i > 0 = concatenacion
  | otherwise = ""
  where
    concatenacion = concatenar (n, i)

concatenar :: (String, Int) -> String
concatenar (n, i)
  | i > 0 = n ++ " " ++ concatenar (n, i - 1)
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "duplicar a 3 veces: " ++ show (duplicar "a" 3)
  putStrLn $ "duplicar dbd 5 veces: " ++ show (duplicar "dbd" 5)
  putStrLn $ "duplicar PLP 0 veces: " ++ show (duplicar "PLP" 0)
  putStrLn $ "duplicar TC 3: " ++ show (duplicar "TC" 3)