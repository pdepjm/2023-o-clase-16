object verdurin1{
	var cajones = 10
	var velocidadActual = 80
	
	method cargarCajones(cantidad){
		cajones += cantidad
		velocidadActual -= cajones * 50 / 500
	}
	
	method peso() = cajones * 50 
	
	method velocidadActual() = velocidadActual
}

object verdurin2{
	
	//ATRIBUTOS:)
	var cajones 
	var pesoCajones
	var velocidadMaxima
	var kilometraje = 700000
	
	method cajonesATransportar(cantidad){
		cajones += cantidad
		pesoCajones += cajones * 50
		velocidadMaxima -= pesoCajones / 500
	}
}

object verdurin{
	
	var cajones = 10
	var kilometraje = 700000
	
	//SETTER - ACCESSOR
	method cajones(cantidad){
		cajones = cantidad
	}
	
	method peso() = cajones * 50
	
	method velocidadMaxima() = 80 - self.peso() / 500
	
	method recorrer(kilometros, velocidad){
		kilometraje+= kilometros
	}
}

object scanion5001{
	var capacidadMaxima = 5000
	var velocidadMaxima = 140
	var densidad
	var pesoTransportado = densidad * capacidadMaxima
	
 	method densidad(nuevaDensidad){
 		densidad = nuevaDensidad
 	}
}

object scanion5002{
	var capacidadMaxima = 5000
	var velocidadMaxima = 140
	var pesoTotal
	
 	method totalPeso(densidad){
 		pesoTotal = densidad * capacidadMaxima
 	}
}

object scanion5000 {
	
	const capacidadMaxima = 5000
	const densidad = 2 //el enunciado no dice nada, asumo que es una constante
	
	method peso() = densidad * capacidadMaxima
	
	method velocidadMaxima() = 140
	
	method recorrer(kilometros, velocidad){}
}

object cerealitas{
	var deterioro = 0
	var property peso //necesitamos tanto el getter y el setter
	
	method velocidadMaxima() = if(deterioro < 10) 40 else 60 - deterioro

	method recorrer(kilometros, velocidad){
		deterioro += self.velocidadMaxima() - 45
	}
}