import Prelude hiding (drop)

_drop :: [a] -> Int -> Int -> [a]
_drop list n index
    | length list == index = []
    | (index + 1) `mod` n == 0 = _drop list n (index + 1)
    | otherwise = (list!!index) : (_drop list n (index + 1))

drop :: [a] -> Int -> [a]
drop list n = _drop list n 0

main = do
    n <- readLn :: IO Int
    inputData <- getContents
    let
        list = lines inputData
    putStrLn $ show . drop list $ n
