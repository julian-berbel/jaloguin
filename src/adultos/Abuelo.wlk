import adultos.AdultoComun.AdultoComun

class Abuelo inherits AdultoComun {
  override method leAsusta(unAsustador) {
    return true
  }

  override method cuantosCaramelosDa() {
    return super() / 2
  }
}