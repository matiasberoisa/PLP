-- esta def esta mal porque falta el caso donde n y p sean distintos, el resultado de la funcion no tiene en cuenta sus valores para analizar
allDiferent :: (Eq int) => int -> int -> int -> Bool
allDiferent m n p = (n /= m) && (m /= p)

main :: IO ()
main = do
  putStrLn $ "todos distintos con 1 2 3: " ++ show (allDiferent 1 2 3)
  putStrLn $ "todos distintos con 1 2 1: " ++ show (allDiferent 1 2 1)
  putStrLn $ "todos distintos con 1 1 3: " ++ show (allDiferent 1 3 3)
  putStrLn $ "todos distintos con 1 1 1: " ++ show (allDiferent 1 1 1)