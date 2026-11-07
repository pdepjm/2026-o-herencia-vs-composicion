class Cliente {
	var salarioMensual = 24000
	var medioDePago
	method cuantoPaga(costoBase) = costoBase + self.montoPropina(costoBase) 
	method montoPropina(costoBase)

	method leAlcanzaPara(valor) = medioDePago.puedePagar(valor)

}

class ClienteSalario inherits Cliente {
	override method montoPropina(costoBase) = salarioMensual * 0.01
}

class ClienteComun inherits Cliente { 
	override method montoPropina(costoBase) = costoBase * 0.1
}
class ClienteComedido inherits Cliente { 
	var montoMaximo 
	override method montoPropina(costoBase) = montoMaximo.min(costoBase * 0.2)
}
class ClienteAmarrete inherits Cliente {
	override method montoPropina(costoBase) = 0
}

/*
const clienteComun = new ClienteComun()


const clienteComedido = new ClienteComedido(montoMaximo=1000)


const clienteAmarrete = new ClienteAmarrete()
*/