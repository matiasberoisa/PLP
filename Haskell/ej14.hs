entreLineas :: String -> String -> String -> String
entreLineas a b c = linea
  where
    linea = a ++ " " ++ b ++ " " ++ c

main :: IO ()
main = do
  putStrLn $ "texto 1: " ++ show (entreLineas "a" "b" "c")
  putStrLn $ "texto 2: " ++ show (entreLineas "13" "14" "15")
  putStrLn $ "texto 3: " ++ show (entreLineas "sos" "re" "bauti")
  putStrLn $ "texto 4: " ++ show (entreLineas "el santi" "se" "la come")