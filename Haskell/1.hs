myLast :: [a] -> a 
myLast (x:[]) = x
myLast (x:xs) = myLast xs

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . myLast) list
