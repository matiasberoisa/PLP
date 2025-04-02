minMax :: (Int, Int) -> (Int, Int)
minMax (x, y)
  | x > y = (y, x)
  | otherwise = (x, y)

main :: IO ()
main = do
  putStrLn $ "minMax (3,2): " ++ show (minMax (3, 2))
  putStrLn $ "minMax (1,2): " ++ show (minMax (1, 2))
  putStrLn $ "minMax (2,2): " ++ show (minMax (2, 2))
  putStrLn $ "minMax (89,9): " ++ show (minMax (89, 9))