isPalindrome :: Eq a => Int -> Int -> [a] -> Bool
isPalindrome left right list
    | left >= right = True
    | list!!left /= list!!right = False
    | otherwise = isPalindrome (left + 1) (right - 1) list

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . isPalindrome 0 (length list - 1)) list
