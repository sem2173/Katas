require 'minitest/autorun'
require 'chiffres_romains'

class ChiffresRomainsTest < MiniTest::Unit::TestCase
  def test_I_donne_un
    assert_equal 1, convert_to_decimal("I")
  end

  def test_V_donne_cinq
    assert_equal 5, convert_to_decimal("V")
  end

  def test_II_donne_deux
    assert_equal 2, convert_to_decimal("II")
  end

  def test_IV_donne_quatre
    assert_equal 4, convert_to_decimal("IV")
  end

  def test_X_donne_dix
    assert_equal 10, convert_to_decimal("X")
  end

  def test_L_donne_cinquante
    assert_equal 50, convert_to_decimal("L")
  end

  def test_C_donne_cent
    assert_equal 100, convert_to_decimal("C")
  end

  def test_D_donne_cinq_cents
    assert_equal 500, convert_to_decimal("D")
  end

  def test_M_donne_mille
    assert_equal 1000, convert_to_decimal("M")
  end

  def test_III_donne_trois
    assert_equal 3, convert_to_decimal("III")
  end

  def test_recette
    assert_equal 2012, convert_to_decimal('MMXII')
  end
end
