package com.app.catalogos

class ConfiguracionEmpresa {
    
    String nombreDeEmpresa
    String domicilio
    String email
    
    static constraints = {
        nombreDeEmpresa     nullable:false, unique:true
        domicilio           nullable:false
        email               email:true
    }
}
