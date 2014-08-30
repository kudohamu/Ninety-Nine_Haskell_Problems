split::[a] -> Int -> ([a], [a])
split list n = (take n list, drop n list)

split'::[a] -> Int -> ([a], [a])
split' list number_of_splite = (spliteHelper (number_of_splite >=) list, spliteHelper (number_of_splite <=) list)
  where
    spliteHelper f xs = map fst $ filter (f . snd) $ zip xs [1..]

split''::[a] -> Int -> ([a], [a])
split'' (x:xs) n
  | n > 0 = let (f, l) = split'' xs (n - 1) in (x:f, l)
split'' xs _ = ([], xs)
