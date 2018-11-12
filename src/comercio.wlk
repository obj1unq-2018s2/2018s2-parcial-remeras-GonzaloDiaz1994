import pedidosYSucursales.*

// Hubiera estado bueno que los pedidos hubiesen estado en la clase
// Sucursal.
// Aplicas bien Colecciones, pero te quedo un toque mas facil con 
// Pedidos aca. Pero NO es nada grave.
class Comercio{
	var property pedidos = []
	
	// Pasaria esta parte a sucursal.
	method registrarPedido(pedido){
		pedidos.add(pedido)
	}
	method totalFacturado() = pedidos.sum{pedido => pedido.precio()}
	
	method totalFacturadoDeSucursal(sucursalDada) = pedidos.filter{
		pedido => pedido.sucursal() == sucursalDada}.sum{pedido => pedido.precio() } 

// Esto podria hacerse con el mensaje de colecciones count.
	method cantPedidosPorColor(color) = pedidos.filter{
		pedido => pedido.modeloDeRemera().color() == color
	}.size()
	
	method pedidoMasCaro() = pedidos.max{
		pedido => pedido.precio()
	}
	
	method tallesPedidos() = pedidos.map{pedido => pedido.modeloDeRemera().talle()}.asSet()
	
 	method tallesNoPedidos(){
 		var talles = new Range(32, 48)
 		talles = talles.asList().asSet().difference(self.tallesPedidos())
 		return talles
 	
		}
	
	method sucursalQueMasFacturo() = pedidos.max{
		pedido => self.totalFacturadoDeSucursal(pedido.sucursal())
	}.sucursal()
	
//	method sucursalesQueVendieron
}