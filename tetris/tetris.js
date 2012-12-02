function draw(){
  var canvas = document.getElementById('tetris');
  if(canvas){
    var ctx = canvas.getContext('2d');
    ctx.clearRect(0,0,200,320);

    ctx.strokeStyle = '#EE0000';
    ctx.strokeRect(0, 0, 200, 320);
    ctx.fillStyle = '#E1E1E1';
    ctx.fillRect(40, p.position_y(), 40, 40);
    p.set_position_y(p.position_y() + 20);
  }
}

function Piece(y_position){
  this.y_position = y_position;
}
Piece.prototype.position_y = function(){
  return this.y_position; 
}
Piece.prototype.set_position_y = function(new_yp){
  this.y_position = new_yp;
}

function Jeu(x, y){
  this.x = x;
  this.y = y;
}
Jeu.prototype.set_piece_courante = function(piece){
  this.piece_courante = piece;
}
