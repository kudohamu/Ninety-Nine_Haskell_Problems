dropEvery::[a] -> Int -> [a]
dropEvery _ 0 = []
dropEvery [] _ = []
dropEvery list n =  (take (n - 1) list) ++ dropEvery (drop n list) n

dropEvery'::[a] -> Int -> [a]
dropEvery' list n = map fst $ filter ((n /=) . snd) $ zip list (cycle [1..n])
