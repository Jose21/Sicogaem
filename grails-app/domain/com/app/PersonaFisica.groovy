package com.app

class PersonaFisica extends Persona {
    String nombres
    String apellidoPaterno
    String apellidoMaterno
    static constraints = {
        nombres         blank:false
        apellidoPaterno blank:false
        apellidoMaterno blank:false
    }
}
