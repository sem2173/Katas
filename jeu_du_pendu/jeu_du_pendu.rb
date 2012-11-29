class Pendu
  def initialize secret
    @mot_secret = secret
    @lettres_proposees = []
  end
  
  def coups_restant
    tmp = @lettres_proposees
    tmp.reject! {|lettre| @mot_secret.include? lettre}    
    10 - tmp.size
  end
  
  def affiche
    return @mot_secret.gsub(/./, '-') if @lettres_proposees.empty?
    @mot_secret.gsub(/[^#{@lettres_proposees.join}]/, '-')
  end
  
  def lettres
    @lettres_proposees
  end

  def propose lettre_proposee
    return false if lettre_proposee.size > 1
    @lettres_proposees << lettre_proposee
    true
  end
  
end
