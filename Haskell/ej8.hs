allDiferent :: (Eq int) => int -> int -> int -> Bool
allDiferent x y z = (x /= y) && (y /= z) && (x /= z)

main :: IO ()
main = do
  putStrLn $ "todos distintos con 1 2 3: " ++ show (allDiferent 1 2 3)
  putStrLn $ "todos distintos con 1 2 1: " ++ show (allDiferent 1 2 1)
  putStrLn $ "todos distintos con 1 1 3: " ++ show (allDiferent 1 1 3)
  putStrLn $ "todos distintos con 1 1 1: " ++ show (allDiferent 1 1 1)