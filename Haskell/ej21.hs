ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple (x, y, z)
  | x < z && y < z = ordenarZ
  | x < y && z < y = ordenarY
  | otherwise = ordenarX
  where
    ordenarX = (x, max y z, min y z)
    ordenarY = (y, max x z, min x z)
    ordenarZ = (z, max y x, min y x)

main :: IO ()
main = do
  putStrLn $ "ordenTriple (1,2,3): " ++ show (ordenTriple (1, 2, 3))
  putStrLn $ "ordenTriple (3,5,0): " ++ show (ordenTriple (3, 5, 0))
  putStrLn $ "ordenTriple (1,2,1): " ++ show (ordenTriple (1, 2, 1))
  putStrLn $ "ordenTriple (12,9,11): " ++ show (ordenTriple (12, 9, 11))