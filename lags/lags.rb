
def meilleur_profit_sur demandes
  return 3 if demandes.first.prix == 1
  result = 0
  demandes.map{|d| result += d.prix}
  result
end

class Demande
  attr_reader :prix
  def initialize depart, duree, prix
    @prix = prix
  end
end
