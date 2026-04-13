object cuentaCorriente {

    var saldo = 0

    // Deposita una cuenta bancaria en la cuenta corriente 
    
    method depositarSumaMonetaria(cantidad) {

        saldo = saldo + cantidad
            

    }

    // extrae de la cuenta la suma pedida
    method extraerSumaMonetaria(cantidad) {

        saldo= saldo - cantidad //puede ser que esa suma se vaya a algun lado?
                                //la cuenta negativa permite saldos negativos, por tanto no requiere validacion
                                //previa de si hay *cantidad* dinero en la cuenta
    }

//getter del saldo de la cuenta
    
    method saldo() {

        return saldo

    }

    method setSaldoALaCuenta(unSaldo) {

        saldo = unSaldo //PARA LOS TESTS!!!!! (aunque podria usar antes depositarSumaMonetaria(cantidad) )


    }

}

object cuentaConGastos { 

    var saldo = 0
    var costoPorOperacion = 0


    // getter de saldo
    method saldo() {

        return saldo

    }
    // getter del costo por operacion
    method costoPorOperacion() {

        return costoPorOperacion

    }

    //setter para el costo por operacion
    method setCostoPorOperacion(tarifa) {

        costoPorOperacion = tarifa

    }

    method depositarSumaMonetaria(cantidad) {

    self.validarImporteACuenta(cantidad) //valida que se pueda hacer la transaccion antes de hacerla
    
    saldo = saldo + (cantidad - costoPorOperacion)

        
    }

    method extraerSumaMonetaria(cantidad) {

        saldo= saldo - (cantidad + costoPorOperacion) 
        
    }
    

    //consulta para verificar que se pueda realizar la operacion
    method verificarSaldoParaCostoPorOperacion() {

        return saldo > costoPorOperacion

    }

    method validarImporteACuenta(cantidadAAñadir) {

        if(not(self.verificarSaldoParaCostoPorOperacion())) {

            self.error("no puede importar porque cantidadAAñadir > costoPorOperacion")

        }

    }
}