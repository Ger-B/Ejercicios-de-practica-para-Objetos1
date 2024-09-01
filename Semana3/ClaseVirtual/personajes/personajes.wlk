import elementos.*
import armas.*

object floki {
    var arma = ballesta 
    method encontrar(elemento) {
        if(arma.estaCargada()){
            elemento.recibirAtaque(arma.potenciaDeAtaque())
            arma.registrarUso()
        }
    }
    method arma() {     //getter
        return arma
    }
    method arma(unArma) {   //setter
        arma = unArma
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = aurora
    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.otorgarValor()
        elemento.recibirTrabajo()
        ultimoElementoEncontrado = elemento
    }
    method esFeliz() {
      return valorRecolectado >= 50 or 
      ultimoElementoEncontrado.altura() >= 10
    }
}

object vacio {
  
}