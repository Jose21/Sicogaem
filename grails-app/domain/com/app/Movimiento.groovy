package com.app

import com.app.catalogos.Estado
import com.app.catalogos.Pais

class Movimiento implements Serializable{
    String      serie
    String      folio
    Date        fechaDeCertificacion
    String      lugarDeExpedicion
    String      formaDePago
    String      metodoDePago
    String      numeroDeSerieDeCertificadoDelEmisor
    String      folioFiscal
    String      numeroDeSerieDeCertificadoDelSat
    //String      concepto
    BigDecimal  importeNeto
    BigDecimal  totalImpuestosTrasladados
    BigDecimal  total
    
    TipoDeOperacion tipoDeOperacion
    Persona         emisor
    Persona         receptor
    
    String calleExpedicion
    String numeroExteriorExpedicion
    String numeroInteriorExpedicion
    String coloniaExpedicion
    String delegacionOMunicipioExpedicion
    Estado estadoExpedicion
    Pais   paisExpedicion
    String codigoPostalExpedicion
    
    static hasMany = [
                        conceptos:Concepto,
                        impuestos:Impuesto
                     ]
    
    static constraints = {
        calleExpedicion                 nullable:true
        numeroExteriorExpedicion        nullable:true
        numeroInteriorExpedicion        nullable:true
        coloniaExpedicion               nullable:true
        delegacionOMunicipioExpedicion  nullable:true
        estadoExpedicion                nullable:true
        paisExpedicion                  nullable:true
        codigoPostalExpedicion          nullable:true
    }
}
