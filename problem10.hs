import Data.List(group)

encode::(Eq a) => [a] -> [(Int, a)]
encode = encodeFactory . group

encodeFactory::[[a]] -> [(Int, a)]
encodeFactory [] = []
encodeFactory list = (length $ head list, head $ head list):(encodeFactory $ tail list)

--各要素に関数を適用する（要素を(a->b)したい）ならmapが便利
encode'::(Eq a) => [a] -> [(Int, a)]
encode' = map (\n -> (length n, head n)) . group
