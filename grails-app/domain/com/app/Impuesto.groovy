package com.app

class Impuesto {
    
    String      nombreDelImpuesto
    BigDecimal  tasa
    BigDecimal  importe
        
    static belongsTo = [movimiento:Movimiento]
    
    static constraints = {
        
        nombreDelImpuesto   blank:false
        tasa                blank:false,min:0.0
        importe             blank:false,min:0.0
        
    }
}
