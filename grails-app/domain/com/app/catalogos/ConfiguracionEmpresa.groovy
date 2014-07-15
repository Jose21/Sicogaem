package com.app.catalogos

class ConfiguracionEmpresa {
    
    String nombreDeEmpresa
    String nombreDeLogo
    byte[] logo
    String domicilio
    String email
    
    static constraints = {
        nombreDeEmpresa     nullable:false, unique:true
        nombreDeLogo        nullable:true, maxSize:1000
        logo                nullable:true, maxSize:10000000
        domicilio           nullable:false
        email               email:true
    }
    
    static mapping = {
        id generator: 'hilo',
        params: [table: 'hi_value', column: 'next_value', max_lo: 100]
    }
}
