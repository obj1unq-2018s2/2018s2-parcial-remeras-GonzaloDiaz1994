import pedidosYSucursales.*

class Comercio{
	var property pedidos = []
	
	method registrarPedido(pedido){
		pedidos.add(pedido)
	}
	method totalFacturado() = pedidos.sum{pedido => pedido.precio()}
	
	method totalFacturadoDeSucursal(sucursalDada) = pedidos.filter{
		pedido => pedido.sucursal() == sucursalDada}.sum{pedido => pedido.precio() } 

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