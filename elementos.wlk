import plagas.*
class Hogar {
  var mugre
  const confort
  method esBueno() = mugre * 2 <= confort
  method recibirAtaqueDe(unaPlaga){
    mugre += unaPlaga.nivelDeDaño()
  }
}

class Huerta {
  var produccion
  method esMala() = produccion > nivelDeCosecha.valor()
  method recibirAtaqueDe(unaPlaga){
    produccion = produccion - (unaPlaga.nivelDeDaño() * 0.1
    + if(unaPlaga.transmiteEnfermedades()) 10 else 0)
  }
}

class Mascota {
  var salud
  method esBuena() = salud > 250
  method recibirAtaqueDe(unaPlaga){
    if(unaPlaga.transmiteEnfermedades()){
      salud = salud - unaPlaga.nivelDeDaño() 
    }
  } 
  
}

class Barrio {
  const property elementos = []
  method esCopado(){
    return self.cantElementosBuenos() > elementos.size() / 2
  }
  method cantElementosBuenos() = elementos.count({e => e.esBueno()})

}


object nivelDeCosecha {
  var property valor = 10
}
