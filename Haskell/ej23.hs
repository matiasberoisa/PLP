minimoYmaximo :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int)
minimoYmaximo (x, y) (a, b) (c, d) = (minimo, maximo)
  where
    maximo = max (max (max x y) (max a b)) (max c d)
    minimo = min (min (min x y) (min a b)) (min c d)

main :: IO ()
main = do
  putStrLn $ "minimo Y maximo (2,4) (3,5) (4,1): " ++ show (minimoYmaximo (2, 4) (3, 5) (4, 1))
  putStrLn $ "minimo Y maximo (1,2) (3,4) (5,6): " ++ show (minimoYmaximo (1, 2) (3, 4) (5, 6))
  putStrLn $ "minimo Y maximo (10,5) (25,20) (30,0): " ++ show (minimoYmaximo (10, 5) (25, 20) (30, 0))