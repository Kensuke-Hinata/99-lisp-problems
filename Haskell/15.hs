repli :: [a] -> Int -> [a]
repli list repeat
    | length list == 0 = []
    | otherwise = (replicate repeat . head $ list) ++ (repli (tail list) repeat)

main = do
    repeat <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . repli list $ repeat 
