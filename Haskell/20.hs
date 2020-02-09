slice :: [a] -> Int -> Int -> Int -> [a]
slice list left right index
    | left > right = []
    | index == length list = []
    | index >= left - 1 && index <= right - 1 = (list !! index) : res
    | otherwise = res
    where res = slice list left right (index + 1) 

removeAt :: Int -> [a] -> [[a]]
removeAt pos list 
    | pos <= 0 || pos > (length list) = [list]
    | otherwise = [list!!(pos - 1)] : ((slice list 1 (pos - 1) 0) ++ (slice list (pos + 1) (length list) 0)) : []

main = do
    pos <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . removeAt pos $ list
