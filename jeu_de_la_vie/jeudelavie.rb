def grille_suivante grille
  nouveau_tableau_cellule = []
  grille.cellules.size.times {nouveau_tableau_cellule << 0}
  Grille.new grille.largeur, nouveau_tableau_cellule
end

class Grille
  attr_reader :largeur, :cellules
  def initialize largeur, cellules
    @largeur = largeur
    @cellules = cellules
  end
  def hauteur
    @cellules.size
  end
  def == autre
    @cellules == autre.cellules and @largeur == autre.largeur

  end
end
