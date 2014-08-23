myButLast::[a] -> a
myButLast [] = error "No but end for empty list!"
myButLast [x] = error "No but end for one element list!"
myButLast (x:xs) = head . tail $ reverse (x:xs)

