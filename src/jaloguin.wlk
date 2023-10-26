import excepciones.NoSePuedeTenerLegionesDeTerrorSinMultiplesMiembrosException.NoSePuedeTenerLegionesDeTerrorSinMultiplesMiembrosException

object jaloguin {
  var property cuantoAsustanLosMaquillajes = 3

  method crearLegionDeTerror(miembros) {
    if (miembros.size() < 2) throw new NoSePuedeTenerLegionesDeTerrorSinMultiplesMiembrosException()
  }
}