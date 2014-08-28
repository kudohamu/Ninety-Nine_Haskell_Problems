dupli::[a] -> [a]
dupli = concatMap (\n -> [n, n])

dupli'::[a] -> [a]
dupli' [] = []
dupli' (x:xs) = x:x:dupli' xs
