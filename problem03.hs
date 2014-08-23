elementAt::[a] -> Int -> a
elementAt [] _ = error "Index out of bounds"
elementAt list number
  | number < 1 = error "Index out of bounds"
  | length list < number = error "Index out of bounds"
  | otherwise = list !! (number - 1)

