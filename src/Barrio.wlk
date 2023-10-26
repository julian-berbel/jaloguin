class Barrio {
  const ninios = []

  method top3DeCuantosCaramelosTienen() {
    return ninios.sortedBy { unNinio => unNinio.cantidadDeCaramelos() }.take(3)
  }

  method elementosDeNiniosConVariosCaramelos() {
    return ninios.filter { unNinio => unNinio.tieneVariosCaramelos() }.flatMap { unNinio => unNinio.elementosQueTienePuestos() }.withoutDuplicates()
  }
}
