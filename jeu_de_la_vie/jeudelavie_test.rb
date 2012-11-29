=begin
À chaque étape, l'évolution d'une cellule est entièrement déterminée
par l'état de ses huit voisines de la façon suivante :

    * Une cellule morte possédant exactement trois voisines vivantes
      devient vivante (elle naît).
    * Une cellule vivante possédant deux ou trois voisines vivantes
      le reste, sinon elle meurt.

# Si une cellule a exactement trois voisines vivantes, elle est vivante
  à l'étape suivante.
# Si une cellule a exactement deux voisines vivantes, elle reste
  dans son état actuel à l'étape suivante.
# Si une cellule a strictement moins de deux ou strictement plus de
  trois voisines vivantes, elle est morte à l'étape suivante.
=end

require 'test/unit'
require 'jeudelavie'

class JeudelavieTest < Test::Unit::TestCase
  def test_une_grille_a_deux_dimmension
    grille = Grille.new 2, [00]
    assert_equal 1, grille.hauteur
    assert_equal 2, grille.largeur

    grille = Grille.new 3, [000, 000, 000, 000]
    assert_equal 4, grille.hauteur
    assert_equal 3, grille.largeur
  end

  def test_grille_suivante_donne_une_grille
    grille = Grille.new 3, [000,000]
    assert_kind_of Grille, grille_suivante(grille)
  end

  def test_une_cellule_isole_meurt
    grille = Grille.new 3, [000,000,010,000]
    assert_equal Grille.new(3, [000,000,000,000]), grille_suivante(grille)
  end


end
