_pack :: Eq a => [a] -> Int -> [[a]]
_pack [] _ = []
_pack list index
    | index + 1 == length list = [[list!!index]]
    | (list!!index) == (list!!(index + 1)) = ((list!!index) : first) : tails
    | otherwise = [list!!index] : (first : tails)
    where (first : tails) = _pack list (index + 1)

pack :: Eq a => [a] -> [[a]]
pack list = _pack list 0

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . pack) list
