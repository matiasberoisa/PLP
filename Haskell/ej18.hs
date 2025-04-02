justificarCentro :: Int -> String -> String
justificarCentro n st
  | n > 0 = st ++ justificarCentro (n - 1) st
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "3 veces a: " ++ show (justificarCentro 3 "a")
  putStrLn $ "1 vez b: " ++ show (justificarCentro 1 "b")
  putStrLn $ "8 veces c: " ++ show (justificarCentro 8 "c")
  putStrLn $ "10 veces d: " ++ show (justificarCentro 10 "d")