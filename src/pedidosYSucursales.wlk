import remeras.*

class Pedido{
	const property modeloDeRemera //recibe una sola remera
	const cantidadDeRemeras //recibe la cantidad de remeras (un numero)
	const property sucursal

	method precioBase() = modeloDeRemera.costo() * cantidadDeRemeras
	
	method hayDescuento() = cantidadDeRemeras > sucursal.cantidadMinima()
	
	method descuento() = self.precioBase() * modeloDeRemera.porcentajeDescuento() /100
	
	method precio(){
		if(self.hayDescuento()){
			return self.precioBase() - self.descuento()
		}else{
			return self.precioBase()
		}
	}
	
}

class Sucursal{
	const property cantidadMinima

}





