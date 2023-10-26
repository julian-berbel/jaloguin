import asustadores.Asustador.Asustador

class LegionDeTerror inherits Asustador {
  const miembros

  method capacidadDeAsustar() {
    return miembros.sum { unMiembro => unMiembro.capacidadDeAsustar() }
  }

  method cantidadDeCaramelos() {
    return miembros.sum { unMiembro => unMiembro.cantidadDeCaramelos() }
  }

  method recibirCaramelos(unaCantidad) {
    self.lider().recibirCaramelos(unaCantidad)
  }

  method lider() {
    return miembros.max { unMiembro => unMiembro.capacidadDeAsustar() }
  }
}

// B.3.:
// No es necesario hacer ningún cambio al modelado ya que las legiones y los ninios son polimórficos
// respecto a la interfaz con la que una legión se comunica con sus miembros.