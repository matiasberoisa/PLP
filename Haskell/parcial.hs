tparcial :: (Int, Int) -> Int -> Int
tparcial (n,m) c
    | n <= m && n >= 1 && c > 0 = sumador((n,m) c)
    | otherwise = 0

sumador :: (Int, Int) -> Int -> Int
sumador (n,m) c
    | tope >= limite = tope ++ "          " ++ (sumador((n, m - 1) c) + (((n ^ 3) + (5 * c)) div ((n * 2) + (c - 1))))
    | otherwise = 0
    where
        tope = snd (n,m)
        limite = fst (n,m)

main :: IO ()
main = do
  putStrLn $ "tparcial (2, 4) 3: " ++ show (tparcial (2,4) 3)
