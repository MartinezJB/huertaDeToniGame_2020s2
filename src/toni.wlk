import wollok.game.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	var property dineroAcumulado = 0
	const property plantasSembradas = []
	
	method moveteDerecha(){
		self.position(self.position().right(1))
	}
	
	method moveteIzquierda(){ self.position(self.position().left(1)) }
	method moveteArriba(){ self.position(self.position().up(1)) }
	method moveteAbajo(){ self.position(self.position().down(1)) }
	method moveteA(unaPosicion){ self.position(unaPosicion) }
	
	method sembrar(planta){
		plantasSembradas.add(planta)
	}
	method regarLasPlantas() {
		plantasSembradas.forEach({each=>each.regar()})
	}
	method vender() {
		
	}
	method consultarAToni() {
		
	}
}