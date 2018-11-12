import remeras.*

class Pedido{
	const property modeloDeRemera //recibe una sola remera
	const cantidadDeRemeras //recibe la cantidad de remeras (un numero)
	const property sucursal

	method precioBase() = modeloDeRemera.costo() * cantidadDeRemeras
	
	// Aca se deberia ser >= o cuando igalas la cantidad de remeras minimas
	// no se aplica el descuento.
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

// Hubiese estado mejor que los pedidos estuvieran aqui.
class Sucursal{
	const property cantidadMinima

}





