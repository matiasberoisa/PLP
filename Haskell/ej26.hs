import Data.Fixed (mod')

añoBisiesto :: Int -> Int -> String
añoBisiesto n m
  | n <= m = añoBisiesto n (m - 1) ++ " " ++ esAñoBisiesto m
  | otherwise = ""

esAñoBisiesto :: Int -> String
esAñoBisiesto n
  | mod n 4 == 0 || (mod n 100 == 0 && mod n 400 == 0) = show n ++ " es bisiesto"
  | otherwise = show n ++ " NO es bisiesto"

main :: IO ()
main = do
  putStrLn $ "2000 2004: " ++ show (añoBisiesto 2000 2004)
  putStrLn $ "2000 2020: " ++ show (añoBisiesto 2000 2020)
  putStrLn $ "2000 1990: " ++ show (añoBisiesto 2000 1990)
  putStrLn $ "1990 2000: " ++ show (añoBisiesto 1990 2000)