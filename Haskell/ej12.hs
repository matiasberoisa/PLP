import Data.Char (digitToInt)

charToNum :: Char -> Int
charToNum = digitToInt

main :: IO ()
main = do
  putStrLn $ "digito 2: " ++ show (charToNum '2')
  putStrLn $ "digito 3: " ++ show (charToNum '3')
  putStrLn $ "digito 4: " ++ show (charToNum '4')
  putStrLn $ "digito 5: " ++ show (charToNum '5')