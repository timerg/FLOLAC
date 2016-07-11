module Lib where
import Control.Monad
import Prelude hiding (even, unzip)
someFunc :: IO ()
someFunc = putStrLn "someFunc"

mySquare :: Double -> Double
mySquare x = x * x

even :: Int -> Bool
even a = if mod a 2 == 0 then True
    else  False

-- mod' :: Int -> Int -> Int
-- mod' a b = _

area :: Double -> Double
area r = (mySquare r) * pi where pi = 22/7


myEven :: Int -> Bool
myEven x | (mod x 2) == 0 = True
         | otherwise     = False


payment :: Int -> Int
payment weak | weak > 19 = weak *
                            let days = 5
                                hours = 8
                            in  weak * days
            | otherwise = 100

payment'  :: Int -> Int
payment' week | week > 19 = week * hours * days
              | otherwise = round $ (fromIntegral $ week * hours * days) * 6 / 100
        where hours = 8
              days = 5

nested :: Int
nested = let x = 3
         in (let x = 5
             in x + x) + x


recursive :: Int
recursive = let x = 3
            in let x = x + 1 in x       -- This x is the x itself. So recursive

smaller :: Int -> Int -> Int
smaller a b = if a > b then b
                else a

st3 = smaller 3

poly :: Double -> Double -> Double -> Double -> Double
poly a b c x = a * x * x + b * x + c

-- x^2 + 2 * x + 1
poly1 :: Double -> Double -> Double -> Double
poly1 = poly 1

poly2 :: Double -> Double -> Double -> Double
poly2 a b c = poly a b c 2

forktimes :: Num a => (t -> a) -> (t -> a) -> t -> a
forktimes f g x = f x * g x
                -- ((((f x) *) g) x)
forktimes' = forktimes (\x -> x + 1)  (\x -> x + 2)

lift2 :: (t1 -> t2 -> t) -> (t3 -> t1) -> (t3 -> t2) -> t3 -> t
lift2 h f g x = h (f x) (g x)

-- lift2' x = lift2 (*) (\x -> x + 1) (\x -> x + 2) x
lift2' = lift2 (*)




position' :: Char -> String -> Int -> Int
position' c xs i = case (xs !! i) == c of
      True -> i
      False -> 0

position :: Char -> String -> [Int]
position c xs = filter (/= 0) $ map (position' c xs) [0..(l-1)]
    where l = length xs


-- concat :: t t1 -> t1
concat' :: [[a]] -> [a]
concat' [] = []
concat' (s:xs) = s ++ concat'(xs)

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = (reverse' xs ) ++ (x:[])

fan :: a -> [a] -> [[a]]
fan a [] = [[a]]
fan a (x:xs) = toutou : fan''
    where
        toutou = a:x:xs
        fan'' = map (x:) fan'
        fan' = fan a xs

perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:[]) = fan x []
perms (x:xs) = concat $ map ((fan x)) (perms (xs))
-- perms (x:xs) = perms xs


subsets :: [a] -> [[a]]
-- subsets [] = [[]]
-- subsets (x:[]) = map (x:)(subsets [])
-- subsets (x:xs) = map (x:)(subsets xs) ++ [[x]]
subsets = filterM (const [True, False])
    -- filterM :: Monad m => (a -> m Bool) -> [a] -> m [a]

-- unzip' :: [(a, b)] -> ([a], [b])
-- unzip' xs = (unzipr xs, unzipl xs)
--
-- unzipr :: [(a, b)] -> [a]
-- unzipr [] = []
-- unzipr (x:xs) = (fst x):(unzipr xs)
-- unzipl :: [(a, b)] -> [b]
-- unzipl [] = []
-- unzipl (x:xs) = (snd x):(unzipl xs)

fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

min' :: Int -> Int -> Int
min' a b = if a - b > 0 then b else a

data Tree a = Null | Node a (Tree a) (Tree a)

minT :: Tree Int -> Int
minT Null = 100
minT (Node a (Null)(Null)) = a
minT (Node a t1 t2) = min a $ min (minT t1) (minT t2)

tree1 = Node 1 (Null) (Null)
tree2 = Node 2 (tree1) (Null)
tree3 = Node 3 (tree2) (tree1)


--
