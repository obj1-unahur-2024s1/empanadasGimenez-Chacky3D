object galvan{
	var sueldo = 150000
	var dinero = 0
	var deuda = 0
	
	method gastar(cuanto){
		deuda = if(dinero - cuanto < 0) deuda + (dinero - cuanto).abs() else deuda
		dinero = 0.max(dinero - cuanto)
	}
	method cobrarSueldo(){
		const deudaAnterior = deuda
		dinero = dinero + sueldo
		deuda = if(deuda - dinero <= 0) 0 else deuda - dinero
		dinero = 0.max(dinero - deudaAnterior)
		
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoSueldo) { sueldo = nuevoSueldo }
	method totalDeuda() { return deuda }
	method totalDinero() { return dinero }
	
}

object baigorria{
	var sueldo = 18000
	var dinero = 0
	
	method cobrarSueldo(){
		dinero = dinero + sueldo
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoImporte) { sueldo = nuevoImporte }
	method totalDinero() { return dinero }
}

object gimenez{
	var fondoParaSueldos = 3000000
	
	method pagarSueldoA(empleado){
		fondoParaSueldos = fondoParaSueldos - empleado.sueldo()
		empleado.cobrarSueldo()
	}
}