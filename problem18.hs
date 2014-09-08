slice::[a] -> Int -> Int -> [a]
slice list start_num end_num = drop (start_num - 1) $ take end_num list

slice'::[a] -> Int -> Int -> [a]
slice' list start_num end_num = snd . unzip . filter ((>= start_num) . fst) $ zip [1..end_num] list

slice''::[a] -> Int -> Int -> [a]
slice'' list start_num end_num = snd . unzip . filter (\(n, _) -> n >= start_num && n <= end_num) $ zip [1..] list
