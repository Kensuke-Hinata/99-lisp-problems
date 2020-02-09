dupli :: [a] -> [a]
dupli list
    | length list == 0 = []
    | otherwise = (replicate 2 . head $ list) ++ (dupli . tail $ list)

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . dupli) list
