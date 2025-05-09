object camion {
    const carga =  []

    method cargarUnaCosa(unaCosa){}

    method descargarUnaCosa() {
      
    }

    method pesoTotal() = 1000 + self.pesoCarga()

    method pesoCarga() = carga.sum({e => e.peso()})

    method todoPesoPar()= carga.all({e => e.peso().even()}) //Devuelve si todos los pesos de la carga son pares


    method hayAlgoQuePesa(unValor) = carga.any({e => e.peso() == unValor})

    method cosaConPeligrosidad(nivelP) = carga.filter({e => e.peligrosidad() == nivelP})

    method cosasSuperanPeligrosidad(nivelP) = carga.filter({e => e.peligrosidad() > nivelP })

    method cosaMasPeligrosaQue(unaCosa) = self.cosasSuperanPeligrosidad(unaCosa)

    method excedidoDePeso() = self.pesoTotal() > 2500

    method pudeCircular(unNivel) = not self.excedidoDePeso() and self.cosasSuperanPeligrosidad(unNivel).isEmpty()



}





/*

Cosas para agregar despues en la parte 2 =


agregar a las cosas un metodo que diga cunatos bultos ocupa

en ladrillos no queda otra q usar if 

lo mismo con bateria antiaerea

y despues tengo que sumar los bultos nomas

y agregar el metodo cargar(cosa) a camion que la agregue a la carga y le haga hacer el efecto de cargado a la cosa