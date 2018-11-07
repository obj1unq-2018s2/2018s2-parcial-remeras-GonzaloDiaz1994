class RemeraLisa{
	const property talle
	var property color
	const coloresBasicos = ["blanco", "negro", "gris"]
	
	method esColorBasico() = coloresBasicos.contains(color)
	
	method costo(){
		if(talle.between(32, 40) and self.esColorBasico() ){
			return 80
		}else if(talle.between(41, 48) and self.esColorBasico()){
			return 100
		}else if(talle.between(32, 40) and not self.esColorBasico()){
			return 88
		}else{return 110}
	}
	
	method porcentajeDescuento() = 10
	
}

class RemeraBordada inherits RemeraLisa{
	const cantColores 
	
	override method costo() = super() + self.costoBordado()
	
	method costoBordado(){
		if(cantColores > 1){
			return 10 * cantColores
		}else{
			return 20 * cantColores
		}
	}
	override method porcentajeDescuento() = 2
	
}

class RemeraSublimada inherits RemeraLisa{
	const alto
	const ancho
	const duenioDelDibujo
	
	method superficie() = alto * ancho
	
	method costoSublimado() = (self.superficie() * 0.5) + duenioDelDibujo.derechoDeAutor()
	
	override method costo() = super() + self.costoSublimado()	
	
	override method porcentajeDescuento(){
		if(duenioDelDibujo.tieneConvenio()){
			return 20
		}else{
			return 0
		}
	}
}

class Empresa{
	const property derechoDeAutor // numero
	const property tieneConvenio // booleano
}















