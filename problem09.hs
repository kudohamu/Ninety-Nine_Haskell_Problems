import Data.List(group)

pack::(Eq a) => [a] -> [[a]]
pack = group

pack'::(Eq a) => [a] -> [[a]]
pack' [x] = [[x]]
pack' (x:xs)
  | x `elem` (head (pack xs)) = (x:(head (pack xs))):(tail (pack xs))
  | otherwise = [x]:(pack xs)
