import estadosDeSalud.EstadoDeSaludActivo.EstadoDeSaludActivo
import estadosDeSalud.enCama.enCama

object empachado inherits EstadoDeSaludActivo {
  override method peor() {
    return enCama
  }

  override method actitud(unNinio) {
    return super(unNinio) / 2
  }
}