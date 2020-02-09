_slice :: [a] -> Int -> Int -> Int -> [a]
_slice list left right index
    | left > right = []
    | index == length list = []
    | index >= left - 1 && index <= right - 1 = (list !! index) : res
    | otherwise = res
    where res = _slice list left right (index + 1) 

slice :: [a] -> Int -> Int -> [a]
slice list left right = _slice list left right 0

main = do
    left <- readLn :: IO Int
    right <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . slice list left $ right 
