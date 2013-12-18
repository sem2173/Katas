module Main where

import Test.HUnit
import Prime

main = do runTestTT tests

tests = TestList [
    primeFactorOf 1 ~?= []
   ,primeFactorOf 2 ~?= [2]
   ,primeFactorOf 3 ~?= [3]
   ,primeFactorOf 4 ~?= [2,2]
   , take 1 primeList ~?= [2]
   , take 2 primeList ~?= [2,3]
   , take 3 primeList ~?= [2,3,5]
    ]
