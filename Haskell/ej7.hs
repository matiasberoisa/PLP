funny :: (Ord int) => int -> int -> int -> Bool
funny x y z
  | x > z = True
  | x >= y = False
  | otherwise = True

funnyRed :: (Ord int) => int -> int -> int -> Bool
funnyRed x y z = (x > z) || (x < y)

main :: IO ()
main = do
  putStrLn $ "valor con 6 5 2: " ++ show (funnyRed 1 0 2)