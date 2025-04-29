imc :: Int -> Int -> String
imc peso altura
  | peso > altura = calculo peso altura
  | otherwise = "valores invalidos"

calculo :: Int -> Int -> String
calculo peso altura
  | n < 18.5 = "muy bajo"
  | n >= 18.5 && n < 25 = "normal"
  | n >= 25 && n < 30 = "alto"
  | otherwise = "muy alto"
  where
    n = fromIntegral peso / fromIntegral (altura * altura)

main :: IO ()
main = do
  putStrLn $ "imc 60 2: " ++ show (imc 100 2)
  putStrLn $ "resultado: " ++ show (80 / fromIntegral (2 * 2))
