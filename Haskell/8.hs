_compress :: Eq a => [a] -> Int -> [a]
_compress [] _ = []
_compress list index
    | index + 1 == length list = [list!!index]
    | list!!index == list!!(index + 1) = _compress list (index + 1)
    | otherwise = (list!!index) : (_compress list (index + 1))

compress :: Eq a => [a] -> [a]
compress list = _compress list 0

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . compress) list
