import wollok.game.*

class Planta{
	var property position = game.at(3, 3)
	method regar()
}

class Maiz inherits Planta {
	var esBebe = true
	
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
}

class Trigo inherits Planta {
	var evolucion = 0
	
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
}

class Tomaco inherits Planta {
	
	method image() {
		return "tomaco_ok.png"
	}
	override method regar() {}
}