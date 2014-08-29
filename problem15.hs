repli::[a] -> Int -> [a]
repli [] _ = []
repli list n = concatMap (replicate n) list

repli'::[a] -> Int -> [a]
repli' [] _ = []
repli' list repli_num = foldl (\acc n -> acc ++ repliHelper n  repli_num) [] list
  where
    repliHelper _ 0 = []
    repliHelper x n = x:repliHelper x (n - 1)

--(>>=)::m a -> (a -> m b) -> m b
repli''::[a] -> Int -> [a]
repli'' list n = list >>= replicate n
