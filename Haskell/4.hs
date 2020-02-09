myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . myLength) list
