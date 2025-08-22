import colores.*
import materiales.*
import objetos.*
import personas.*

object bolichito {
    var mostrador = pelota
    var vidriera = placa
    method mostrador() = mostrador
    method vidriera() = vidriera

    method cambiarVidriera(objetoNuevo) {
        vidriera = objetoNuevo
    }

    method cambiarMostrador(objetoNuevo) {
        mostrador = objetoNuevo
    }
    
    method esBrillante() = vidriera.material().esBrillante() && mostrador.material().esBrillante()
    method esMonocromatico() = vidriera.color() == mostrador.color()
    method estaEquilibrado() = mostrador.peso() > vidriera.peso()
    method hayObjetoDeColor(color) = color == vidriera.color() || color == mostrador.color()
    method puedeMejorar() = not self.estaEquilibrado() && self.esMonocromatico() 
    method esClienteInteresadoEnObjecto(persona) = persona.leGusta(vidriera) || persona.leGusta(mostrador)
}