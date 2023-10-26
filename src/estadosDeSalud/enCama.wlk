import excepciones.NoPuedeComerCaramelosEstandoEnCamaException.NoPuedeComerCaramelosEstandoEnCamaException
import excepciones.NoPuedoEmpeorarMasException.NoPuedoEmpeorarMasException

object enCama {
  method comerCaramelos(unNinio, unaCantidad) {
    throw new NoPuedeComerCaramelosEstandoEnCamaException()
  }

  method actitud() {
    return 0
  }
  
  method peor() {
    throw new NoPuedoEmpeorarMasException()
  }
}