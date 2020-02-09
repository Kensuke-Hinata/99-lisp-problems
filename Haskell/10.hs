_encode :: Eq a => [a] -> Int -> [(Int, a)]
_encode [] _ = []
_encode list index
    | index + 1 == length list = [(1, list!!index)]
    | (list!!index) == (list!!(index + 1)) = ((fst first) + 1, (list!!index)) : tails
    | otherwise = (1, list!!index) : first : tails
    where (first : tails) = _encode list (index + 1)

encode :: Eq a => [a] -> [(Int, a)]
encode list = _encode list 0

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . encode) list
