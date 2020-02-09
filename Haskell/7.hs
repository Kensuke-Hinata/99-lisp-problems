data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList -> List
flatten nl

main = do
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ (show . isPalindrome 0 (length list - 1)) list
