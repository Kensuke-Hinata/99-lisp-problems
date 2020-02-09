myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . myReverse) list
