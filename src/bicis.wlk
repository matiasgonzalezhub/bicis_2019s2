import accesorios.*

class Bicicleta {
  var rodado
  var largo
  var marca
  var property accesorios = []

  method getRodado(){
    return rodado
  }
  
  
  method getLargo(){
    return largo
  }

  
  method setRodado(r){
     rodado = r
  }
  
  
  method setLargo(l){
     largo = l
  }
  
  method getMarca(){
  	return marca
  }
  
  method setMarca(m){
     marca = m
  }
  
  method agregarAccesorio(a){ accesorios.add(a)}
  
  method altura(){
  	return self.getRodado() * 2.5 + 15
  }  
  
  method velocidadDeCrucero(){
  	return if(self.getLargo() > 120 ) {rodado + 6 } else { rodado + 2}
  }
  
  method carga()
  {
  	return accesorios.sum({ x => x.carga() })
  }
  
  method pesoTotalAccesorios(){
  	return accesorios.sum({ x => x.peso()})
  }
  
  method peso(){
  	return self.getRodado() / 2 + self.pesoTotalAccesorios()
  }
  
  method tieneLuz(){
  	return accesorios.any({ x => x.esLuminoso() == true})
  }
  
  method cantidadAccesoriosLivianos()
  {
  	return accesorios.count({ x => x.peso() < 1})
  }
  
  method tieneAccesorio(){
  	//return !(accesorios.size() == 0)
  	return if (accesorios.size() == 0) {false} else {true}
  }
}