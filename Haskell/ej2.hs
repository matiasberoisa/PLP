losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales x y z w = (x == y) && (x == z) && (x == w)

main :: IO ()
main = do
  print (losCuatroIguales 1 1 1 1)
