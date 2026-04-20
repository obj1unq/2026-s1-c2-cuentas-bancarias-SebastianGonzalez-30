object casa {

    var cuentaBancaria = null
    var gastoTotal = 0
     

    method setAsignarCuenta(unaCuentaBancaria) {

        cuentaBancaria = unaCuentaBancaria
    }

    method gastoTotal() {

        return gastoTotal

    }

    method pagarGastos(cantidad) {

        cuentaBancaria.extraerSumaMonetaria(cantidad) 
        gastoTotal = gastoTotal + cantidad

    }
    
    
    method cambiarDeMes() {

        gastoTotal = 0  //cambiar el mes implica que los gastos totales vuelvan a cero


    }
}