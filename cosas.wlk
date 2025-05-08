object knigtRider {
    method peso() = 500 
    method peligrosidad() = 10

}

object bumblebee{
    method peso() = 800
    method peligrosidad() = estado.peligrosidad()
    var estado = auto
    method transformar() {
      estado = estado.cambiar()
    }
}

object ladrillos{
    var property cantidad = 0
    method peso() =  2 * cantidad
    method peligrosidad() = 2
    
}

object auto {
  method pelgrosidad() = 15 
  method cambiar() = robot
}

object robot {
    method peligrosidad() = 30
    method cambiar() = auto 
}


object arenaAGranel{
    var property peso = 0
    method peligrosidad() = 1


}

object bateriaAntiAerea{
    var tieneMisiles = false
    method peso() = if(tieneMisiles) 300 else 200
    method peligrosidad() = if(tieneMisiles) 100 else 0
    method cargarMisiles(){tieneMisiles = true}
    method descargarMisiles(){tieneMisiles = false}

}

object contenedor{
    const contenido = []
    method peso() = 100 + contenido.sum({o => o.peso()})
    method agregarCosas(cosa) {
      contenido.add(cosa)
    }
    method eliminarUnaCosa(cosa){
        contenido.remove(cosa)
    }
    method peligrosidadMaxima() = if (contenido.isEmpty()) 0 else contenido.max({o => o.peligrosidad()}).peligrosidad()
    method vaciarContenedor(){contenido.clear()}
}

object embalaje{
    var cosaEnvuelta = null
    method envolver(unaCosa){cosaEnvuelta = unaCosa}
    method peso() = cosaEnvuelta.peso()
    
}