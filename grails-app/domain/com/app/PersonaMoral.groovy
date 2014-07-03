package com.app

class PersonaMoral extends Persona{
    
    String denominacionSocial   //  nombre bajo el cual opera mercantilmente
    String nombreComercial      //  o razón social
    
    static constraints = {
        denominacionSocial  blank:false
        nombreComercial  blank:false
    }
}
