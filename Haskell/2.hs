myButLast :: [a] -> a 
myButLast (x:xs)
    | length xs == 0 = undefined
    | length xs == 1 = x
    | otherwise = myButLast xs

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . myButLast) list
