import feroz.*
object caperucita {
    method peso() = 60 + canasta.peso()
}

object canasta {
    var manzanas = 6
    method peso() = manzanas * 0.2
    method caer(cantiad) {
        manzanas = 0.max(manzanas - cantiad)
    }
}

object abuelita {
    method peso() = 50 
}

object hamburguesa {
    method peso() = 20  
}

object cazador {
    method peso() = 100
     
    method llegar() {
        if(feroz.estaSaludable())
            feroz.comer(self)
        else
            feroz.crisis()
    }
}

/*
No es necesario un objeto manzana con atributo peso porque su peso 
no varia, ni es necesario consultarlo en ningun momento. Tampoco
es que el lobo coma manzanas directamnte...
Nuvamente tampoco es necesario "Property" pues el cambio de peso 
depende de un comportamiento dependiente de metodos. No es necesario
una modificacion lineal.
*/