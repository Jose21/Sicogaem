package com.app

class Movimiento implements Serializable{
    String      serie
    String      folio
    Date        fechaDeCertificacion
    String      numeroDeSerieDeCertificadoDelEmisor
    String      folioFiscal
    String      numeroDeSerieDeCertificadoDelSat
    String      concepto
    BigDecimal  importe
    BigDecimal  iva
    BigDecimal  total
    
    TipoDeOperacion tipoDeOperacion
    Persona         emisor
    Persona         receptor
    static constraints = {
    }
}
