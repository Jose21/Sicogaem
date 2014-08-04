package com.app

class Concepto {
    String      cantidad
    String      descripcion
    String      unidad
    BigDecimal  valorUnitario
    BigDecimal  importe
    
    static belongsTo = [movimiento:Movimiento]
    
    static constraints = {
        
        cantidad        blank:false
        descripcion     blank:false
        unidad          blank:false
        valorUnitario   min:0.0
        importe         min:0.0
       
    }
}
