import Data.List(group)
--derivingを使ってshowクラスのインスタンス定義を自動生成
data NEElem a = Single a | Multiple Int a deriving Show

encodeModified::(Eq a) => [a] -> [NEElem a]
encodeModified = map (\n -> if (length n) == 1 then Single (head n) else Multiple (length n) (head n)) . group

--where句を使うとmapに適用する関数の部分が長すぎて読みにくくなることを防げる
encodeModified'::(Eq a) => [a] -> [NEElem a]
encodeModified' = map encodeHelper . encode
  where
    encodeHelper (1, x) = Single x
    encodeHelper (n, x) = Multiple n x

--problem10のもの
encode::(Eq a) => [a] -> [(Int, a)]
encode = map (\n -> (length n, head n)) . group
