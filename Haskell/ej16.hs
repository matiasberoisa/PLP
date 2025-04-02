hacerEspacios :: Int -> String
hacerEspacios i
  | i > 0 = " " ++ hacerEspacios (i - 1)
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "3 veces: " ++ show (hacerEspacios 3)
  putStrLn $ "5 veces: " ++ show (hacerEspacios 5)
  putStrLn $ "0 veces: " ++ show (hacerEspacios 0)
  putStrLn $ "3 veces: " ++ show (hacerEspacios 3)