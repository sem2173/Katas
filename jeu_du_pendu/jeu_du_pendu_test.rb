require 'test/unit'
require 'jeu_du_pendu'

class JeuDuPenduTest < Test::Unit::TestCase
  
  attr_reader :pendu
  
  def setup
    @pendu = Pendu.new('joue')
  end
  
  def test_demarre_le_jeu_initialise_avec_le_nouveau_secret
    assert_kind_of Pendu, pendu
  end
  
  def test_affiche_la_position_initiale_du_pendu
     autre_pendu = Pendu.new('joe')
     assert_equal '---', autre_pendu.affiche

     assert_equal '----', pendu.affiche
  end
  
  def test_on_peut_proposer_une_lettre
    assert pendu.propose('a')
  end
  
  def test_je_ne_peut_propose_plusieurs_lettres_en_meme_temps
    assert ! pendu.propose('ab')
  end
  
  def test_quelles_lettres_ont_deja_ete_proposees
     assert_equal [], pendu.lettres
  end

  def test_nombre_de_propositions_restantes_si_rien_propose
    assert_equal 10, pendu.coups_restant
  end
  
  def test_nombre_de_propositions_restantes_si_une_mauvaise_lettre
    pendu.propose 'a'
    assert_equal 9, pendu.coups_restant
  end
  
  def test_nombre_de_propositions_restantes_si_une_bonne_lettre
    pendu.propose 'j'
    assert_equal 10, pendu.coups_restant
  end
  
  def test_j_affiche_la_lettre_trouvee
    pendu.propose('o')
    assert_equal '-o--', pendu.affiche
    pendu = Pendu.new('autre')
    pendu.propose('t')
    assert_equal '--t--', pendu.affiche
  end
  
  def test_je_propose_une_lettre_qui_n_est_pas_dans_le_mot
    pendu.propose('a')
    assert_equal ['a'], pendu.lettres
    assert_equal '----', pendu.affiche
    assert_equal 9, pendu.coups_restant
  end

  def test_je_propose_une_lettre_qui_est_dans_le_mot
    pendu.propose('o')
    assert_equal ['o'], pendu.lettres
    assert_equal '-o--', pendu.affiche
    assert_equal 10, pendu.coups_restant
  end

  #TODO 
  def test_scenario_de_recette
    pendu = Pendu.new('sandwich')
    pendu.propose('t')
    assert_equal '--------', pendu.affiche
    assert_equal 9, pendu.coups_restant
    pendu.propose('a')
    assert_equal '-a------', pendu.affiche
    assert_equal 9, pendu.coups_restant
    pendu.propose('r')
    assert_equal '-a------', pendu.affiche
    assert_equal 8, pendu.coups_restant

    assert_equal ['t', 'a', 'r'], pendu.lettres
  end
  
end
