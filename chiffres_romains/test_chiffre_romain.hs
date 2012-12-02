-- commentaire..
module Main
where
import Test.HUnit
import ChiffreRomain

main = do runTestTT tests

tests = TestList [i_vaut_un,
                  ii_vaut_deux,
                  v_vaut_cinq,
                  vi_vaut_six,
                  iv_vaut_quatre,
                  xiv_vaut_quatorze,
                  m_vaut_mille,
                  c_vaut_cent,
                  d_vaut_cinqcent,
                  l_vaut_cinquante,
                  testRecette]

testRecette =
    1974 ~=? romainVersDecimal "MCMLXXIV"

i_vaut_un = romainVersDecimal "I" ~?= 1
ii_vaut_deux = romainVersDecimal "II" ~?= 2
v_vaut_cinq = romainVersDecimal "V" ~?= 5
vi_vaut_six = romainVersDecimal "VI" ~?= 6
iv_vaut_quatre = romainVersDecimal "IV" ~?= 4
xiv_vaut_quatorze = romainVersDecimal "XIV" ~?= 14
m_vaut_mille = romainVersDecimal "M" ~?= 1000
c_vaut_cent = romainVersDecimal "C" ~?= 100
d_vaut_cinqcent = romainVersDecimal "D" ~?= 500
l_vaut_cinquante = romainVersDecimal "L" ~?= 50
