import pdepcargas.*

object rutatlantica {
	method dejarPasar(camion) {
		//cobrarle a la empresa
		pdepcargas.pagarAPuesto(self.importe(camion))
		//hacer el camion recorra 400km
		camion.recorrer(400, 75)
	}
	
	method importe(camion) = 7000 + camion.peso() / 1000 * 100
}