class Cliente {
	var salarioMensual = 24000
  	var propina
	const medioDePago
	method cuantoPaga(costoBase) = costoBase + propina.monto(costoBase, salarioMensual)

	method propina(nuevoTipo){
		propina = nuevoTipo
	}

	method leAlcanzaPara(valor) = medioDePago.puedePagar(valor)
}

class Efectivo {
	var limite

	method puedePagar(valor) = valor <= limite
}

object tarjetaCredito {
  method puedePagar(valor) = true
}

/*class Salario {
	var salarioCliente

	method monto(costoBase) = salarioCliente * 0.01
}*/

object salario {
  method monto(costoBase, salarioCliente) = salarioCliente * 0.01
}

object comun {
	method monto(costoBase, _) = costoBase * 0.1
}
class Comedido { 
	var montoMaximo 
	method monto(costoBase, _) = montoMaximo.min(costoBase * 0.2)
}
object amarrete { 
	method monto(costoBase, _) = 0
}


const clienteComun = new Cliente(propina=comun, medioDePago=tarjetaCredito)

const clienteComedido = 
new Cliente(propina=new Comedido(montoMaximo = 1000), medioDePago=tarjetaCredito)

const clienteAmarrete = new Cliente(propina=amarrete, medioDePago=tarjetaCredito)

//const clienteSalario = new Cliente(propina= new Salario(salarioCliente=24000))