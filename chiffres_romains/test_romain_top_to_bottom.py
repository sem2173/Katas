import unittest

def convertis_en_entier(nombreRomain):
  result = 0
  if nombreRomain == "":
    return result

  liste_valeur = {'C':100, 'I':1, 'L':50, 'M':1000, 'V':5, 'X':10}

  result = liste_valeur[nombreRomain[0]] + convertis_en_entier(nombreRomain[1:])

  return result


class TestConvertisseurEntier(unittest.TestCase):

  def test_recette(self):
    self.assertEqual(1977, convertis_en_entier("MCMLXXVII"))
    self.assertEqual(1789, convertis_en_entier("MDCCLXXXIX"))

  def test_si_rien_on_a_zero(self):
    self.assertEqual(0, convertis_en_entier(""))

  def test_un_M_vaut_1000(self):
    self.assertEqual(1000, convertis_en_entier("M"))

  def test_un_C_vaut_100(self):
    self.assertEqual(100, convertis_en_entier("C"))

  def test_un_L_vaut_50(self):
    self.assertEqual(50, convertis_en_entier("L"))

  def test_un_X_vaut_10(self):
    self.assertEqual(10, convertis_en_entier("X"))

  def test_un_V_vaut_5(self):
    self.assertEqual(5, convertis_en_entier("V"))

  def test_un_I_vaut_1(self):
    self.assertEqual(1, convertis_en_entier("I"))

  def test_MC_vaut_1100(self):
    self.assertEqual(1100, convertis_en_entier("MC"))

if __name__ == "__main__":
  unittest.main()
