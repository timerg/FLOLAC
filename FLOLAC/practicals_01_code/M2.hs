module M2 where

f0 = (.-.|---|-|.-|-|.|...|..---) 
f1 = (.-.|---|-|.-|-|.|..---)

(.-.|---|-|.-|-|.|..---) (-.) (-..-|...) = (-..|.-.|---|.--.) ((.-..|.|-.|--.|-|....) (-..-|...) - (-.)) (-..-|...) ++ (-|.-|-.-|.)  ((.-..|.|-.|--.|-|....) (-..-|...) - (-.)) (-..-|...)
(.-.|---|-|.-|-|.|...|..---) (-..-|...) = [(.-.|---|-|.-|-|.|..---) (..| ) (-..-|...) | (..| ) <- [0.. (.-..|.|-.|--.|-|....) (-..-|...) -1]]
(..-.|...|-) ((-..-),(-.--)) = (-..-)
(...|-.|-..) ((-..-),(-.--)) = (-.--)
(..-.|---|.-..|-..|.-.) (..-.) (.| ) [] = (.| )
(..-.|---|.-..|-..|.-.) (..-.) (.| ) ((-..-):(-..-|...)) = (..-.) (-..-) ((..-.|---|.-..|-..|.-.) (..-.) (.| ) (-..-|...))
(--|.-|.--.) (..-.) [] = []
(--|.-|.--.) (..-.) ((-..-) : (-..-|...)) = (..-.) (-..-) : (--|.-|.--.) (..-.) (-..-|...)
(--..|..|.--.) [] _ = []
(--..|..|.--.) ((-..-):(-..-|...)) [] = []
(--..|..|.--.) ((-..-):(-..-|...)) ((-.--):(-.--|...)) = ((-..-),(-.--)) : (--..|..|.--.) (-..-|...) (-.--|...)
(..-.|..|.-..|-|.|.-.) (.--.) = (..-.|---|.-..|-..|.-.) (\(-..-) (-..-|...) -> if (.--.) (-..-) then (-..-) : (-..-|...) else (-..-|...)) []
(....|.|.-|-..) ((-..-):(-..-|...)) = (-..-)
(-|.-|..|.-..) ((-..-):(-..-|...)) = (-..-|...)
(-.-.|---|-.|-.-.|.-|-) = (..-.|---|.-..|-..|.-.) (++) []
(.-..|.|-.|--.|-|....) :: [a] -> Int  
(.-..|.|-.|--.|-|....) [] = 0
(.-..|.|-.|--.|-|....) ((-..-):(-..-|...)) = 1 + (.-..|.|-.|--.|-|....) (-..-|...)
(-..|.-.|---|.--.) :: Int -> [a] -> [a]
(-..|.-.|---|.--.) 0 (-..-|...) = (-..-|...)
(-..|.-.|---|.--.) _ [] = []
(-..|.-.|---|.--.) (-.) ((-..-):(-..-|...)) = (-..|.-.|---|.--.) ((-.)-1) (-..-|...)
(-|.-|-.-|.) :: Int -> [a] -> [a] 
(-|.-|-.-|.) 0 _ = []
(-|.-|-.-|.) _ [] = []
(-|.-|-.-|.) (-.) ((-..-):(-..-|...)) = (-..-) : (-|.-|-.-|.) ((-.)-1) (-..-|...)
(-.-.|---|-.|...|-) (-..-) (-.--) = (-..-)