module Potter where

montantOptimise :: [Int] -> Float
montantOptimise [] = 0
montantOptimise [x] = prixDeBase
montantOptimise [1, 2, 5] = (prixDeBase * 3) * 0.90
montantOptimise (x:xs)
        | x == (head xs) = prixDeBase + montantOptimise(xs)
        | otherwise = (prixDeBase + montantOptimise(xs)) * 0.95

prixDeBase = 8

