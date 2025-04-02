cuadradosPerfectos :: (Int, Int) -> String
cuadradosPerfectos (n, m)
  | n <= m = esCuadradoPerfecto n m ++ cuadradosPerfectos (n + 1, m)
  | otherwise = ""

esCuadradoPerfecto :: Int -> Int -> String
esCuadradoPerfecto n m
  | n == sq (floor . sqrt $ fromIntegral n) = show n ++ "-" ++ show (m - (m - n + 1)) ++ " "
  | otherwise = ""

sq :: (Num int) => int -> int
sq x = x * x

main :: IO ()
main = do
  putStrLn $ "cuadradosPerfectos (2, 18): " ++ show (cuadradosPerfectos (2, 18))
  putStrLn $ "cuadradosPerfectos (1, 10): " ++ show (cuadradosPerfectos (1, 10))
  putStrLn $ "cuadradosPerfectos (10, 50): " ++ show (cuadradosPerfectos (10, 50))
  putStrLn $ "cuadradosPerfectos (8, 2): " ++ show (cuadradosPerfectos (8, 2))