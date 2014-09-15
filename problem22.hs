range::Int -> Int -> [Int]
range first last = [first..last]

-- 第一引数 > 第二引数にも対応 --
range'::Int -> Int -> [Int]
range' first last
  | first == last = [last]
  | first <= last = first:range' (first + 1) last
  | first > last = first:range' (first - 1) last
