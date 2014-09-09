insertAt::a -> [a] -> Int -> [a]
insertAt x list num 
  | length list == 0 = [x]
  | num > 0 && length list >= num = (\(s, l) -> s ++ [x] ++ l) $ splitAt (num - 1) list
  | otherwise = list
