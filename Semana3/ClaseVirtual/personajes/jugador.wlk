import personajes.*
import elementos.*
import armas.*


object luisa { 
    var personajeActivo = vacio
    method asignarPersonaje(personaje) {
         personajeActivo = personaje
    }
    method personajeActivo() {
        return personajeActivo
    }
    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }
}