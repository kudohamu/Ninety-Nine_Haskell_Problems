data NEElem a = Single a | Multiple Int a deriving(Show)

--案1
decodeModified::[NEElem a] -> [a]
decodeModified = concat . map (\n -> decodeHelper n)
  where 
    decodeHelper (Single x) = [x]
    decodeHelper (Multiple n x) = replicate n x

--uncurry:(a -> b -> c) -> ((a, b) -> c)
--concatMap:(a -> [b]) -> [a] -> [b]
--こういった関数でタプル配列なら同じようなことができる（今回は独自の型クラスなのでこのままでは無理）
decode'::[(Int, a)] -> [a]
decode' = concatMap (uncurry replicate)

