package com.app

import com.app.catalogos.Estado
import com.app.catalogos.Pais

class Persona {
    String rfc
    String calleFiscal
    String numeroExteriorFiscal
    String numeroInteriorFiscal
    String coloniaFiscal
    String localidadFiscal
    String delegacionOMunicipioFiscal
    Estado estadoFiscal
    Pais   paisFiscal
    String codigoPostalFiscal
    String telefono
    String email
    String regimenFiscal
    
    static constraints = {
        rfc                         size: 1..13
        calleFiscal                 blank:false
        numeroExteriorFiscal        blank:false
        numeroInteriorFiscal        blank:false, nullable:true
        coloniaFiscal               blank:false
        localidadFiscal             blank:false
        delegacionOMunicipioFiscal  blank:false
        coloniaFiscal               blank:false
        estadoFiscal                blank:false
        paisFiscal                  blank:false
        codigoPostalFiscal          blank:false
        telefono                    blank:false, nullable:true
        email                       email:true, nullable:true
        regimenFiscal               balnk:false
    }
}
