_split :: [a] -> Int -> Int -> [[a]]
_split list n index
    | index == length list = [[], []]
    | index < n = [(list !! index) : (res !! 0), res !! 1]
    | otherwise = [(res !! 0), (list !! index) : res !! 1]
    where res = _split list n (index + 1)

split :: [a] -> Int -> [[a]]
split list n = _split list n 0

main = do
    n <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . split list $ n
