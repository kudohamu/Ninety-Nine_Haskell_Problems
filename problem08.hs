import Data.List(group)

compress::(Eq a) => [a] -> [a]
compress [] = []
compress (x1:[]) = [x1]
compress (x1:x2:xs)
  | x1 == x2 = compress (x2:xs)
  | otherwise = [x1] ++ (compress (x2:xs))

compress'::(Eq a) => [a] -> [a]
compress' = map head . group
