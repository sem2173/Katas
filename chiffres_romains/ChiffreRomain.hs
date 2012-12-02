module ChiffreRomain
where

romainVersDecimal :: String -> Integer
romainVersDecimal = calculValeurNombreRomain . map valeur


calculValeurNombreRomain :: [Integer] -> Integer
calculValeurNombreRomain [x] = x
calculValeurNombreRomain (x:x':xs)
  | x < x' = -x + calculValeurNombreRomain (x':xs)
  | otherwise = x + calculValeurNombreRomain (x':xs)

valeur :: Char -> Integer
valeur 'I' = 1
valeur 'V' = 5
valeur 'X' = 10
valeur 'L' = 50
valeur 'C' = 100
valeur 'D' = 500
valeur 'M' = 1000
