slice :: [a] -> Int -> Int -> Int -> [a]
slice list left right index
    | left > right = []
    | index == length list = []
    | index >= left - 1 && index <= right - 1 = (list !! index) : res
    | otherwise = res
    where res = slice list left right (index + 1) 

rotate :: [a] -> Int -> [a]
rotate list _pos 
    | pos == 0 = list
    | otherwise = (slice list (pos + 1) (length list) 0) ++ (slice list 1 pos 0)
    where pos = _pos `mod` (length list)

main = do
    pos <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . rotate list $ pos
