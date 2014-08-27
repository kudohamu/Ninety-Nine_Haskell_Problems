import Data.List(group)
data NEElem a = Single a | Multiple Int a deriving(Show)

encodeDirect::(Eq a) => [a] -> [NEElem a]
encodeDirect = map converter . encode
  where
    converter (1, x) = Single x
    converter (n, x) = Multiple n x

encode::(Eq a) => [a] -> [(Int, a)]
encode = foldl encodeHelper []
  where
    encodeHelper [] x =  [(1, x)]
    encodeHelper (y@(a, b):ys) x
      | b == x = (a + 1, x):ys
      | otherwise = (1,x):y:ys

