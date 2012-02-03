module Tests where
import Test.HUnit
import Potter

-- Code 0, 1, 2, 3 et 4
-- Chaque tome vaut 8 euros
-- 2 en meme temps reduc de 5%, 3 donne 10% et 4 donne 20%
-- la totale 25% sur tout les tomes

main = runTestTT $ TestList [
    "Si aucun livre achete, cout 0" ~:
    montantOptimise [] ~?= 0,
    "Avec le premier livre, cout 8" ~:
    montantOptimise [0] ~?= 8,
    "Avec le deuxieme libre, cout 8" ~:
    montantOptimise [1] ~?= 8,
    "Avec deux fois le premier libre, cout (8+8)" ~:
    montantOptimise [0,0] ~?= 8+8,
    "Avec deux fois le deuxieme libre, cout (8+8)" ~:
    montantOptimise [1,1] ~?= 8+8,
    "Avec 3 fois le 3ieme livre, cout 8+8+8" ~:
    montantOptimise [2,2,2] ~?= 8+8+8,
    "Avec le 1er, et le 2ieme cout (8+8)*0.95" ~:
    montantOptimise [0,1] ~?= ((8 + 8) * 0.95),
    "Avec le 4ieme et le 5ieme, cout (8+8)*0.95" ~:
    montantOptimise [4,5] ~?= ((8 + 8) * 0.95),
    "Avec le 1er, le 2ieme et le 5ieme, cout (8+8+8) * 0.90" ~:
    montantOptimise [1,2,5] ~?= ((8+8+8) * 0.90)
    
  ]
