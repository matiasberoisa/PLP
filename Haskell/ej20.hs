maxOcurrPares :: Int -> Int -> (Int, Int)
maxOcurrPares x y
  | x > y = (x, 1)
  | y > x = (y, 1)
  | otherwise = (x, 2)

maxOcurr :: Int -> Int -> Int -> (Int, Int)
maxOcurr x y z
  | a > z = (a, b)
  | a < z = (z, 1)
  | otherwise = (a, 3)
  where
    a = fst (maxOcurrPares x y)
    b = snd (maxOcurrPares x y)

main :: IO ()
main = do
  putStrLn $ "maxOcurr 1 2 3: " ++ show (maxOcurr 1 2 3)
  putStrLn $ "maxOcurr 2 2 2: " ++ show (maxOcurr 2 2 2)
  putStrLn $ "maxOcurr 4 4 3: " ++ show (maxOcurr 4 4 3)
  putStrLn $ "maxOcurr 3 2 1: " ++ show (maxOcurr 3 2 1)