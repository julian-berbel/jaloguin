import asustadores.Asustador.Asustador
import estadosDeSalud.sano.sano
import excepciones.NoMeAlcanzanLosCaramelosException.NoMeAlcanzanLosCaramelosException

class Ninio inherits Asustador {
  const actitud
  const elementosQueTienePuestos
  var cantidadDeCaramelos
  var estadoDeSalud = sano

  method capacidadDeAsustar() {
    return elementosQueTienePuestos.sum { elemento => elemento.sustoQueGenera() } * actitud
  }

  override method intentarAsustarA(unAdulto) {
    if (self.tieneMuchosCaramelos()) unAdulto.intentarSerAsustadoPorNinioConMuchosCaramelos()
    super(unAdulto)
  }
  
  method tieneMuchosCaramelos() {
    return self.tieneMasDeNCaramelos(15)
  }

  method tieneVariosCaramelos() {
    return self.tieneMasDeNCaramelos(10)
  }

  method tieneMasDeNCaramelos(unaCantidad) {
    return cantidadDeCaramelos > unaCantidad
  }

  method recibirCaramelos(unaCantidad) {
    cantidadDeCaramelos += unaCantidad
  }

  method cantidadDeCaramelos() {
    return cantidadDeCaramelos
  }

  method comerCaramelos(unaCantidad) {
    if (cantidadDeCaramelos < unaCantidad) throw new NoMeAlcanzanLosCaramelosException()
    estadoDeSalud.comerCaramelos(unaCantidad, self)
    cantidadDeCaramelos -= unaCantidad
  }

  method actitud() {
    return estadoDeSalud.actitud(self)
  }

  method elementosQueTienePuestos() {
    return elementosQueTienePuestos
  }
  
  method empeorar() {
    estadoDeSalud = estadoDeSalud.peor()
  }
}