import estadosDeSalud.EstadoDeSaludActivo.EstadoDeSaludActivo
import estadosDeSalud.empachado.empachado

object sano inherits EstadoDeSaludActivo {
  override method peor() {
    return empachado
  }
}