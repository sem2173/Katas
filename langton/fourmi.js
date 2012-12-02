function Fourmi(){
  this.case_courante = {
    direction: [0,-1],
    position: [0,0],
    active: false
  };
  this.case_precedente = null;
}

Fourmi.prototype.avance = function(){
  this.case_precedente = {
    position : this.case_courante.position,
    active : true
  };
  this.case_courante.direction = [1, 0];
  this.case_courante.position = [1, 0];
}

Fourmi.prototype.dessine_dans = function(contexte){
}
