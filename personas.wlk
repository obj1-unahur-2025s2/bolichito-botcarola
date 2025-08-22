import objetos.*
import colores.*

object rosa {
    method leGusta(unaCosa) = unaCosa.peso() < 2000
}

object estefania {
    method leGusta(unaCosa) = unaCosa.color().esFuerte()
}

object luisa {
    method leGusta(unaCosa) = unaCosa.material().esBrillante()
}

object juan {
    method leGusta(unaCosa) = not unaCosa.color().esFuerte() && unaCosa.peso().between(1300, 1500)
}

