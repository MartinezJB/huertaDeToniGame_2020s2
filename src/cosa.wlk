////////////////////Cosechar/////////////////

//PLANTA

//method valorPlanta(){}
//method estaListaCosecha(){ } 
// PLANTA GRAL

override method estaListaCosecha(){ return if(esBebe){ false } else{ true } } //MAIZ

override method estaListaCosecha(){ return evolucion >= 2 } // TRIGO

override method estaListaCosecha(){ return true } // TOMACO 

override method valorPlanta() { return 150 } //class MAIZ
override method valorPlanta() {
	if(evolucion == 2 ){return 100 }
	else{ return 200} 
} //CLASS TRIGO
override method valorPlanta(){ return 80 }

//TONY//////////////////////////////////////////////////////////////////////////////////////

const property monedero = []
const property plantasAVender = []

method plantasListasParaCosechar(){ plantasSembradas.filter({plant=>plant.estaListaCosecha()}) }

method cosecharPlanta(planta){
		plantasSembradas.remove(planta)
		plantasAVender.add(planta) 
} 
 
method cosecharTodo(){ self.plantasListasParaCosechar().foreach({plant=>cosecharPlanta(plant)}) }

//////VENTA

method venderPlanta(planta){ 
	plantasAVender.remove(planta)
	monedero.add(planta.valorPlanta())
 }
method venderCosecha(){ plantasAVender.foreach({ plant=>self.venderPlanta(plant)})}
method totalMonedero(){ return monedero.sum()}