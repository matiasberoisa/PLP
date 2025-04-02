justificarCentro :: Int -> String -> String
justificarCentro n st = cantCarac ++ st ++ cantCarac
  where
    cantCarac = generarEspacios (div (n - length st) 2) 1

justificarCentro1 :: Int -> String -> String
justificarCentro1 n st = generarEspacios (div (n - length st) 2) 1 ++ st ++ generarEspacios (div (n - length st) 2) 1

generarEspacios :: Int -> Int -> String
generarEspacios n i
  | i <= n = " " ++ generarEspacios n (i + 1)
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "justificarCentro 3 a: " ++ show (justificarCentro1 3 "a")
  putStrLn $ "justificarCentro 1 b: " ++ show (justificarCentro1 1 "b")
  putStrLn $ "justificarCentro 8 c: " ++ show (justificarCentro1 8 "c")
  putStrLn $ "justificarCentro 10 d: " ++ show (justificarCentro1 10 "d")