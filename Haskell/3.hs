elementAt :: [a] -> Int -> a 
elementAt (x:xs) k
    | k == 1 = x
    | k <= 0 = undefined
    | length xs == 0 = undefined
    | otherwise = elementAt xs (k - 1)

main = do
    k <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . elementAt list) k
