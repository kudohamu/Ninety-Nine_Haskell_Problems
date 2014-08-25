import Data.List(group)

encode::(Eq a) => [a] -> [(Int, a)]
encode = encodeFactory . group

encodeFactory::[[a]] -> [(Int, a)]
encodeFactory [] = []
encodeFactory list = (length $ head list, head $ head list):(encodeFactory $ tail list)


encode'::(Eq a) => [a] -> [(Int, a)]
encode' = map (\n -> (length n, head n)) . group
