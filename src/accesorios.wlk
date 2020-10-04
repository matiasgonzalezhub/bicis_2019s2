object farolito {
	
	method peso(){return 0.5}
	method carga() {return 0}
	method esLuminoso(){ return true}
}

object canasto {
	var volumen 
	
	method getVolumen(){return volumen}
	method setVolumen(v){ volumen = v}
	
	method peso(){return self.getVolumen() / 10}
	method carga() {return self.getVolumen() * 2}
	method esLuminoso(){ return false}
}

object morralDeBici {
	var largo
	var ojoDeGato
	
	method getLargo(){return largo}
	method setLargo(l){largo = l}
	
	method getOjoDeGato(){return ojoDeGato}
	method setOjoDeGato(tiene){ojoDeGato = tiene}
	
	method peso(){return 1.2}
	method carga() {return self.getLargo()/3}
	method esLuminoso(){ return self.getOjoDeGato()}
}


/*
 * En mi caso los accesorios los resolvi con objetos y no una clase para generarlos. Yo lo cambiaria a una clase base y herencia. 
 * instanciar objetos que por clase base deban resolver los metodos en comun a todos y si alguno necesita resolver algun metodo mas sea
 * su responsabilidad
 */