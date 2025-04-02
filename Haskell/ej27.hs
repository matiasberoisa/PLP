numerosMultiplosDe :: (Int, Int, Int) -> String
numerosMultiplosDe (a, b, c)
  | a <= b = esMultiploDe a c ++ numerosMultiplosDe (a + 1, b, c)
  | otherwise = ""

esMultiploDe :: Int -> Int -> String
esMultiploDe a c
  | mod a c == 0 = show a ++ " "
  | otherwise = ""

main :: IO ()
main = do
  putStrLn $ "numerosMultiplosDe (3, 20, 6): " ++ show (numerosMultiplosDe (3, 20, 6))
  putStrLn $ "numerosMultiplosDe (2, 10, 5): " ++ show (numerosMultiplosDe (2, 10, 5))
  putStrLn $ "numerosMultiplosDe (10, 9, 2): " ++ show (numerosMultiplosDe (10, 9, 2))
  putStrLn $ "numerosMultiplosDe (1, 5, 1): " ++ show (numerosMultiplosDe (1, 5, 1))