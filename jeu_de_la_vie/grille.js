function Grille(tableau){
  this.lignes = tableau;
}

Grille.prototype.suivante = function(){
  return new Grille([
        [null, null, null],
        [null, null, null],
        [null, null, null]
        ]);
}
