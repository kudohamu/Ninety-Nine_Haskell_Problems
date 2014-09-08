rotate::[a] -> Int -> [a]
rotate [] _ = []
rotate [x] _ = [x]
rotate list num
  | num < 0 = rotate list ((length list) + num)
  | length list >= num = (drop num list) ++ (take num list)
  | otherwise = list

rotate'::[a] -> Int -> [a]
rotate' [] _ = []
rotate' list 0 = list
rotate' (x:xs) num
  | num < 0 = rotate (x:xs) ((length (x:xs)) + num)
  | length (x:xs) >= num = rotate (xs ++ [x]) (num - 1)
  | otherwise = (x:xs)
