alinear :: String -> String -> String -> Int -> String
alinear a b c cant = a ++ cantidadCaracteres ++ b ++ cantidadCaracteres ++ c
  where
    cantidadCaracteres = generarEspacios (div cantidad 2) (div cantidad 2)
    cantidad = cant - length a - length b - length c

generarEspacios :: Int -> Int -> String
generarEspacios n i
  | i >= 0 = " " ++ generarEspacios n (i - 1)
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "alinear hola que tal 60: " ++ show (alinear "hola" "que" "tal" 60)
  putStrLn $ "alinear buenas tardes profe 0: " ++ show (alinear "buenas" "tardes" "profe" 0)
  putStrLn $ "alinear sos re butito 30: " ++ show (alinear "sos" "re" "butito" 30)
  putStrLn $ "alinear ja ja ja 60: " ++ show (alinear "ja" "ja" "ja" 60)