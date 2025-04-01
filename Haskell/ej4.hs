cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales x y z
  | x == y && y == z = 3
  | x == y || x == z = 2
  | otherwise = 0

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos x y
  | x == y = 1
  | otherwise = 0

main :: IO ()
main = do
  putStrLn $ "cuantos iguales hay: " ++ show (cuantosIgualesDeDos 1 1)