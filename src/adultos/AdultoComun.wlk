class AdultoComun {
  var cantidadDeNiniosConMuchosCaramelosQueIntentaronAsustarlo = 0

  method leAsusta(unAsustador) {
    return self.tolerancia() < unAsustador.capacidadDeAsustar()
  }

  method cuantosCaramelosDa() {
    return self.tolerancia() / 2
  }

  method tolerancia() {
    return 10 * cantidadDeNiniosConMuchosCaramelosQueIntentaronAsustarlo
  }

  method intentarSerAsustadoPorNinioConMuchosCaramelos() {
    cantidadDeNiniosConMuchosCaramelosQueIntentaronAsustarlo++
  }

  method recibirSusto(unAsustador) {
    if (self.leAsusta(unAsustador)) unAsustador.recibirCaramelos(self.cuantosCaramelosDa())
  }
}