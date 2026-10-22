class Cliente {
	var salarioMensual = 24000
  var propina
	method cuantoPaga(costoBase) = costoBase + propina.monto(costoBase)

}

object comun {
	method monto(costoBase) = costoBase * 0.1
}
class Comedido { 
	var montoMaximo 
	method monto(costoBase) = montoMaximo.min(costoBase * 0.2)
}
object amarrete { 
	method monto(costoBase) = 0
}
















const clienteComun = new Cliente(propina=comun)

const clienteComedido = new Cliente(propina=new Comedido(montoMaximo = 1000))

const clienteAmarrete = new Cliente(propina=amarrete)
