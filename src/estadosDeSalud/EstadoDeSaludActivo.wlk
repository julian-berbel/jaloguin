class EstadoDeSaludActivo {
  method comerCaramelos(unNinio, unaCantidad) {
    if (self.sonMuchosCaramelos(unaCantidad)) unNinio.empeorar()
  }

  method sonMuchosCaramelos(unaCantidad) {
    return unaCantidad > 10
  }

  method actitud(unNinio) {
    return unNinio.actitud()
  }

  method peor()
}