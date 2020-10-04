import bicis.*

class Deposito {
 var property bicicletas=[]
 
 method agregarBici(b){
 	 bicicletas.add(b) 	
 }
 
 method bicisRapidas(){
 	return bicicletas.filter({ x => x.velocidadDeCrucero() > 25})
 }
 
 method marca(){
 	return bicicletas.map({ x => x.getMarca()}).asSet()
 }
 
 method esNocturno(){
 	return bicicletas.all({ x => x.tieneLuz() == true})
 }
 
 method puedeLlevarCarga(carga){
 	
 	return bicicletas.any({ x => x.carga() > carga})
 }
 
 
 method marcaBiciMasRapida(){
 	return bicicletas.max({ x => x.velocidadDeCrucero()}).getMarca()
 }
 
 method cargaDeBicisLargas(){
 	return bicicletas.filter({ x => x.getLargo() > 170 }).sum()
 }
 
 method cantidadSinAccesorios(){
 	return bicicletas.count({ x => !x.tieneAccesorio()})
 	
 }
 
 method bicisCompanieras(bici){
 	return bicicletas.filter({ x => x.getMarca() == bici.getMarca() && x.getLargo().between(bici.getLargo()*0.10 - bici.getLargo() ,bici.getLargo()*0.10 + bici.getLargo()) })
 }
 
  method tieneBicisCompanieras(bici){
 	return bicicletas.any({ x => x.getMarca() == bici.getMarca() && x.getLargo().between(bici.getLargo()*0.10 - bici.getLargo() ,bici.getLargo()*0.10 + bici.getLargo()) })
 }
 
 method parejaDeCompanieras(){
 	return [] //todo..
 }
 
 method seHizoLaLuz(){
 	return true // todo..
 }
}
  