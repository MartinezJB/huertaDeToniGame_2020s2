import wollok.game.*

class Planta{
	var property position = game.at(3, 3)
	method regar()
	
	method valorPlanta()
	method estaListaCosecha()
	method libreDeGluten()
}

class Maiz inherits Planta {
	var esBebe = true
	override method libreDeGluten(){ return true } 
	
	method image() {
		if(esBebe){
		return "maiz_bebe.png"
		}
		else{
			return "maiz_adulto.png"		}
	}
	override method regar() {
		if(esBebe){
			esBebe = false //o sea que pasa a ser adulta
		}
	}
	override method estaListaCosecha(){ return !esBebe }
	override method valorPlanta() { return 150 }
	
}

class Trigo inherits Planta {
	var evolucion = 0
	override method libreDeGluten(){ return false }
	
	method image() {
		if(evolucion==0){ return "trigo_0.png" }
		else if(evolucion==1){ return "trigo_1.png" }
		else if(evolucion==0){ return "trigo_2.png" }
		else { return "trigo_3.png" }
	}
	
	override method regar() {
		if(evolucion >= 3){ evolucion = 0 }
		else { evolucion += 1}
	}
	override method estaListaCosecha(){ return evolucion >= 2 } 
	
	override method valorPlanta() {
	if(evolucion == 2 ){return 100 }
	else{ return 200}
	}
}


class Tomaco inherits Planta {
	
	override method libreDeGluten(){ return true }
	method image() {
		return "tomaco_ok.png"
	}
	override method regar() {}
	override method estaListaCosecha(){ return true }
	override method valorPlanta(){ return 80 }
}