import caperucita.*

object feroz {
    var peso = 10 
    method estaSaludable() = //A partir de ahora usamos esta estructura para metodos de mensaje
        peso.between(20, 150)
    
    method peso() = peso    //Para poder hacer los test. No forma parte del dominio
    
    method corre() {
        peso = 0.max(peso - 1)
    }
    method comer(alimento) {
        peso = 200.min(peso + alimento.peso() * 0.1)
    }
    method crisis() {
        peso = 0.max(peso - 10)
    }
}
//Mas metodos fuera de esto seria inecesario para el dominio

object historia {
    method transcurrir() {
        feroz.corre()
        feroz.corre()
        feroz.comer(abuelita)
        canasta.caer(1)
        feroz.comer(caperucita)
    }
}

//Como historia esto seria suficiente. Me pase un poco yo... 