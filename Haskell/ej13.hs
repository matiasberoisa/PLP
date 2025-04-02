digitoRomano :: Char -> String
digitoRomano num
  | num == 'I' = "1"
  | num == 'V' = "5"
  | num == 'X' = "10"
  | num == 'L' = "50"
  | num == 'C' = "100"
  | num == 'D' = "500"
  | num == 'M' = "1000"
  | otherwise = "indefinido"

main :: IO ()
main = do
  putStrLn $ "I: " ++ show (digitoRomano 'I')
  putStrLn $ "A: " ++ show (digitoRomano 'A')
  putStrLn $ "M: " ++ show (digitoRomano 'M')
  putStrLn $ "B: " ++ show (digitoRomano 'b')
