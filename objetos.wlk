import colores.*
import materiales.*

object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object munieco { 
  // la palabra reservada var declara una variable que puede ser reasignada :D
  // la palabra reservada const declara una variable constante :O
  var peso = 10
  method color() = celeste
  method material() = vidrio

  // hace referencia a la variable peso
  method peso() = peso

  // método para cambiar el peso
  method cambiarPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}

object placa { 
  // atributos (propiedades)
  var color = amarillo
  var peso = 300
  // comportamiento (métodos)
  // comportamiento de tipo indicativo
  method color() = color
  method material() = cobre
  method peso() = peso

  // comportamiento de tipo proceso: procesa algo/hace una acción/modifica el estado de otro objeto
  method cambiarPeso(pesoNuevo) {
    peso = pesoNuevo
  }

  method cambiarColor(colorNuevo) {
    color = colorNuevo
  }
}

object arito {
  method color() = celeste
  method material() = cobre
  method peso() = 180
}

object banquito {
  var color = naranja
  method material() = madera
  method peso() = 1700

  method color() = color
  method cambiarcolor(colorNuevo) {
    color = colorNuevo
  }
}

object cajita {
  var objetoQueContiene = munieco
  method color() = rojo
  method material() = cobre
  method objetoQueContiene() = objetoQueContiene
  method peso() = 400 + self.objetoQueContiene().peso()  

  method cambiarObjetoQueContiene(objetoNuevo) {
    objetoQueContiene = objetoNuevo
  }
}