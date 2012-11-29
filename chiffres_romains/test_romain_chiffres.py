import unittest

def convertiEnEntier(chiffreRomain):
  if chiffreRomain == '':
    return 0
  crTable = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000}
  if len(chiffreRomain) == 1:
    return crTable[chiffreRomain]
  else:
    premier = chiffreRomain[0]
    second = chiffreRomain[1]
    reste = chiffreRomain[1:]
    if crTable[premier] >= crTable[second]:
      return crTable[premier] + convertiEnEntier(reste)
    else:
      return (crTable[second] - crTable[premier]) + convertiEnEntier(chiffreRomain[2:])


class TestConvertisseurEntier(unittest.TestCase):
  def test_chaine_vide(self):
    self.assertEqual(0, convertiEnEntier(""))

  def test_chiffre_romain_II(self):
    self.assertEqual(2, convertiEnEntier("II"))

  def test_chiffre_romain_III(self):
    self.assertEqual(3, convertiEnEntier("III"))

  def test_chiffre_romain_V(self):
    self.assertEqual(5, convertiEnEntier("V"))

  def test_chiffre_romain_VI(self):
    self.assertEqual(6, convertiEnEntier("VI"))

  def test_chiffre_romain_VI(self):
    self.assertEqual(7, convertiEnEntier("VII"))

  def test_chiffre_romain_IV(self):
    self.assertEqual(4, convertiEnEntier("IV"))

  def test_chiffre_romain_X(self):
    self.assertEqual(10, convertiEnEntier("X"))

  def test_chiffre_romain_IX(self):
    self.assertEqual(9, convertiEnEntier("IX"))

  def test_chiffre_romain_XIV(self):
    self.assertEqual(14, convertiEnEntier("XIV"))

  def test_chiffre_romain_MDCL(self):
    self.assertEqual(1650, convertiEnEntier("MDCL"))

  def test_naissance_yaf(self):
    self.assertEqual(1977, convertiEnEntier("MCMLXXVII"))

  def test_revolution(self):
    self.assertEqual(1789, convertiEnEntier("MDCCLXXXIX"))

  def test_revolution(self):
    self.assertEqual(1985, convertiEnEntier("MCMLXXXV"))
if __name__ == "__main__":
  unittest.main()
