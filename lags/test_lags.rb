require 'test/unit'
require './lags'

class TestLags < Test::Unit::TestCase

  def _test_recette
    demandes = [Demande.new(0, 5, 10),
      Demande.new(3, 7, 14),
      Demande.new(5, 9, 7),
      Demande.new(6, 9, 8)]
    assert_equal(18, revenu_max(demandes))
  end

  def test_quand_une_seule_demande_son_prix_et_la_valeur_max_possible
    assert_equal 5, meilleur_profit_sur([Demande.new(0, 2, 5)])
    assert_equal 6, meilleur_profit_sur([Demande.new(4, 3, 6)])
  end

  def test_deux_demandes_compatible_meilleur_profit_egal_somme_des_deux_prix
    assert_equal 7, meilleur_profit_sur([Demande.new(0, 3, 4), Demande.new(3, 2, 3)])
  end

  def test_trois_demandes_compatible_meilleur_profit_egal_somme_des_prix
    assert_equal 12, meilleur_profit_sur([Demande.new(0, 3, 4), 
                                         Demande.new(3, 2, 3),
                                         Demande.new(5, 4, 5)])
  end

  def test_deux_demandes_incompatible_prix_le_plus_fort_est_meilleur_profit
    assert_equal 3, meilleur_profit_sur([Demande.new(0, 2, 1),
                                        Demande.new(1, 2, 3)])
  end

end
