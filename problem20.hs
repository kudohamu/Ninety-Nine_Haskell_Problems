remove_At::Int -> [a] -> (a,[a])
remove_At num list = (\(h, t) -> (head t, h ++ tail t))  $ splitAt (num - 1) list
