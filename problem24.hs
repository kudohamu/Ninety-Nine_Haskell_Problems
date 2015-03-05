import System.Random
import System.IO

diff_select :: Int -> Int -> IO [Int]
diff_select n m = do
  diff_select_support n m IO []

diff_select_support :: Int -> Int -> IO [Int] -> IO [Int]
diff_select_support n m xs
  | n < 0 = error "Don't input negative number for second arg"
  | m < 0 = error "Don't input negative number for third arg"
  | (length xs) == n = return xs
  | otherwise = diff_select_support n m (generate_random_num : xs)

generate_random_num :: Int -> IO Int
generate_random_num m = do
  gen <- newStdGen
  let (rnd, _) = randomR (1, m)
  return rnd
