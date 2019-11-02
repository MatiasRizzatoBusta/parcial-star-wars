class Planeta{
	var property habitante = []
	var property soldados = []
	var property maestros = []
	
	method poderPlaneta(){
		
	}
}

class Habitante {
	const valentia 
	const inteligencia
	
	method poder(){
		return valentia + inteligencia
	}
}

class Soldado inherits Habitante{
	var property listaArmas =[]

	override method poder(){
		return (inteligencia + valentia + self.poderArmas())
	}
	
	method poderArmas(){
		return (self.listaArmas().sum{n => n.potencia()})
	}
}

class Armas{
	var property potencia
}

class Maestro inherits Soldado{
	const midoclorianos
	var tiempo = 0
	method antiguedad(){
		tiempo = tiempo + 1
	}
	
	method vivirSuceso(evento,maestro){
		self.antiguedad()
	}
	
	method lado()
}

class Jedi inherits Maestro{
	var pazInterior = 1000
	method lado() = "jedi"
	
	override method poder(){
		return (inteligencia + valentia + (midoclorianos / 1000)+ (self.poderArmas() * tiempo))
	}
	
	override method vivirSuceso(evento, maestro){
		
		pazInterior = evento.cargaEmocional() + pazInterior
		
		if (pazInterior <= 0)
			maestro.lado(new Sith()) 
	}	
}

class Sith inherits Maestro{
	var odio = 1000
	method lado() = "Sith"
	
	override method poder(){
		return ((inteligencia + valentia + (midoclorianos / 1000) + (self.poderSable() * 2)* self.antiguedad))
	}
	override method vivirSuceso(evento,maestro){
		odio = odio + (odio * 0.1)
		
		if(evento.cargaEmocional() > odio)
		maestro.lado(new Jedi())
	}
}

// CREO CLASE EVENTO
class Evento{
	const property cargaEmocional // es una property pq la voy a usar llamandose a si mismo
}

// CREO CLASE SABLE

class Sable{
	const poderSable 
}