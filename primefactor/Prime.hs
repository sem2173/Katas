module Prime where

primeFactorOf :: Int -> [Int]
primeFactorOf 1 = []
primeFactorOf 4 = [2,2]
primeFactorOf x = [x]

primeList = filter (divisible) (iterate (+1) 2)

divisible x = x `div` x > 1 && x `div` x == round (x `div`x)
