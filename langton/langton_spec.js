describe("La fourmi", function() {
  var fourmi;
  beforeEach(function(){
    fourmi = new Fourmi();
    });

  describe("existe", function(){
    it("et va d'abord vers le nord", function() {
      expect([0, -1]).toEqual(fourmi.case_courante.direction);
    });
    it("placé en [0, 0]", function(){
        expect([0,0]).toEqual(fourmi.case_courante.position);
    });
    it("sur une case inactive", function(){
      expect(false).toEqual(fourmi.case_courante.active);
    });
    it("et n'est passé sur aucune case avant ", function(){
      expect(null).toEqual(fourmi.case_precedente);
    });
  });

  describe("avance d'une case", function(){
      beforeEach(function(){
        fourmi.avance();
      });

      it("après avoir changé de direction", function(){
        expect([1,0]).toEqual(fourmi.case_courante.direction);
      });
      it("elle est donc maintenant en [1,0]", function(){
        expect([1,0]).toEqual(fourmi.case_courante.position);
      });
      it(", elle a donc maintenant en case précédente de la position [0,0]", function(){
        expect([0,0]).toEqual(fourmi.case_precedente.position);
      });
      it(", la case précédente est maintenant active", function(){
        expect(true).toEqual(fourmi.case_precedente.active);
      });
  });

  describe("s'affiche", function(){
    var fourmi = new Fourmi();
    var contexte = jasmine.createSpy('contexte');
    expect(contexte.dessine_point).toHaveBeenCalled();
    fourmi.dessine_dans(contexte);
  });
});

