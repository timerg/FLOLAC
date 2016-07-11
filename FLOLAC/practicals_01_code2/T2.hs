module Main where
import M2
import Test.QuickCheck

{- Your code here -}


{- Test your code using quickCheck -}

correct0 :: ([Int] -> [[Int]]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: (Int -> [Int] -> [Int]) -> Int -> [Int] -> Bool
correct1 f n xs = f n xs == f1 n xs
