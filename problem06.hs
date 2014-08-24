isPalindrome::(Eq a) => [a] -> Bool
isPalindrome list = isSameList list (reverse list)

isSameList::(Eq a) => [a] -> [a] -> Bool
isSameList [] [] = True
isSameList (x:xs) (y:ys)
  | x /= y = False
  | otherwise = isSameList xs ys

