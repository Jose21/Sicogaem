package com.app

import com.app.catalogos.Estado
import com.app.catalogos.Pais
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MovimientoController {

    def movimientoService
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Movimiento.list(params), model:[movimientoInstanceCount: Movimiento.count()]
    }

    def show(Movimiento movimientoInstance) {
        respond movimientoInstance
    }

    def create() {
        respond new Movimiento(params)
    }

    @Transactional
    def save(Movimiento movimientoInstance) {
        if (movimientoInstance == null) {
            notFound()
            return
        }

        if (movimientoInstance.hasErrors()) {
            respond movimientoInstance.errors, view:'create'
            return
        }

        movimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect movimientoInstance
            }
            '*' { respond movimientoInstance, [status: CREATED] }
        }
    }

    def edit(Movimiento movimientoInstance) {
        respond movimientoInstance
    }

    @Transactional
    def update(Movimiento movimientoInstance) {
        if (movimientoInstance == null) {
            notFound()
            return
        }

        if (movimientoInstance.hasErrors()) {
            respond movimientoInstance.errors, view:'edit'
            return
        }

        movimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect movimientoInstance
            }
            '*'{ respond movimientoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Movimiento movimientoInstance) {

        if (movimientoInstance == null) {
            notFound()
            return
        }

        movimientoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    def subirArchivoXML(){
        
    }
    
    def abrirXML(){
        
        final int longitudRfcMoral = 12
        final int longitudRfcFisica = 13
        /**def xml = '<root><one a1="uno!"/><two>Some text!</two></root>'
        def rootNode = new XmlParser().parseText(xml)
        println "arbol: " + rootNode + "          " + rootNode.children()  
        assert rootNode.name() == 'root': rootNode.name()
        println rootNode.name()
        assert rootNode.one[0].@a1 == 'uno!'
        assert rootNode.two.text() == 'Some text!'
        rootNode.children().each { assert it.name() in ['one','two']
        println it.name()}**/
        
        /**def archivoXML = new File(""+params.ingresoXML+"")
        
        
        def pathXML = new File(""+params.ingresoXML+"").getAbsolutePath()
        println pathXML
        
        def contenidoXML = new File(""+params.ingresoXML+"")
        println contenidoXML
        
        def datosContribuyente = new XmlParser().parseText(archivoXML)
            datosContribuyente.children().each { assert it.name() in ['contract']
            println it.name()}
            **/
        
        String  nombreArchivo = ""
        String  path = ""    
        def     lucas
        
        def archivo = request.getFile('ingresoXML')
        if(archivo.empty) {
            flash.message = "El archivo no puede estar vacío."
        } else {
            
            nombreArchivo = archivo.originalFilename            
            path = grailsApplication.config.uploadFolder + nombreArchivo            
            lucas = new File(path)
            archivo.transferTo(lucas)            
        }
        
        def comprobante = new XmlSlurper().parse(new File(path)) // Comprobante --> root
        
        //def libros = new XmlSlurper().parse(new File("/Users/lion/Desktop/ingreso.xml"))        
       
        def totalEmisores = comprobante.Emisor.size()
        def totalReceptores = comprobante.Receptor.size()
        def totalConceptos = comprobante.Conceptos.Concepto.size()
        def totalImpuestos = comprobante.Impuestos.Traslados.Traslado.size()
        def totalComplementos = comprobante.Complemento.TimbreFiscalDigital.size()
        String tmpFecha
        
        println "Total de emisores: " + totalEmisores
        println "Total de receptores: " + totalReceptores
        println "Total de conceptos: " + totalConceptos
        println "Total de impuestos: " + totalImpuestos        
        println "Total de complementos: " + totalComplementos      
        
        
        Movimiento datosComprobante                         = new Movimiento()
        datosComprobante.serie                              = comprobante.'@serie'
        datosComprobante.folio                              = comprobante.'@folio'
        tmpFecha = comprobante.'@fecha'
        tmpFecha = tmpFecha.replace('T',' ')
        datosComprobante.fechaDeCertificacion = (comprobante.'@fecha' != null)? new Date().parse("yyyy-MM-dd HH:mm:ss",tmpFecha) : datosComprobante.fechaDeCertificacion
        datosComprobante.lugarDeExpedicion                  = comprobante.'@LugarExpedicion'
        datosComprobante.formaDePago                        = comprobante.'@formaDePago'
        datosComprobante.metodoDePago                       = comprobante.'@metodoDePago'
        datosComprobante.numeroDeSerieDeCertificadoDelEmisor= comprobante.'@noCertificado'
        datosComprobante.folioFiscal                        = comprobante.Complemento.TimbreFiscalDigital.'@UUID'
        datosComprobante.numeroDeSerieDeCertificadoDelSat   = comprobante.Complemento.TimbreFiscalDigital.'@noCertificadoSAT'
        
        String largoRfc
        String tmp2
        boolean moral =false
        
        for(int i=0;i<totalEmisores;i++){
            largoRfc = comprobante.Emisor[i].'@rfc' as String
            println largoRfc           
            if(largoRfc.length()==longitudRfcMoral){ // Persona Moral
                PersonaMoral emisor                 = new PersonaMoral()
                emisor.rfc                          = comprobante.Emisor[i].'@rfc'
                emisor.denominacionSocial           = comprobante.Emisor[i].'@nombre'
                emisor.calleFiscal                  = comprobante.Emisor[i].DomicilioFiscal.'@calle'
                emisor.numeroExteriorFiscal         = comprobante.Emisor[i].DomicilioFiscal.'@noExterior'
                emisor.numeroInteriorFiscal         = comprobante.Emisor[i].DomicilioFiscal.'@noInterior'
                emisor.coloniaFiscal                = comprobante.Emisor[i].DomicilioFiscal.'@colonia'
                emisor.delegacionOMunicipioFiscal   = comprobante.Emisor[i].DomicilioFiscal.'@municipio'
                emisor.estadoFiscal                 = Estado.findByNombre(comprobante.Emisor[i].DomicilioFiscal.'@estado' as String)
                emisor.paisFiscal                   = Pais.findByNombre(comprobante.Emisor[i].DomicilioFiscal.'@pais' as String)
                emisor.codigoPostalFiscal           = comprobante.Emisor[i].DomicilioFiscal.'@codigoPostal'
                emisor.telefono                     = comprobante.Emisor[i].DomicilioFiscal.'@telefono'
                emisor.email                        = comprobante.Emisor[i].DomicilioFiscal.'@email'
                emisor.regimenFiscal                = comprobante.Emisor[i].RegimenFiscal.'@Regimen' as String
                
                moral = true
                
                datosComprobante.calleExpedicion                = comprobante.Emisor[i].ExpedidoEn.'@calle'
                datosComprobante.numeroExteriorExpedicion       = comprobante.Emisor[i].ExpedidoEn.'@noExterior'
                datosComprobante.numeroInteriorExpedicion       = comprobante.Emisor[i].ExpedidoEn.'@noInterior'
                datosComprobante.coloniaExpedicion              = comprobante.Emisor[i].ExpedidoEn.'@colonia'
                datosComprobante.delegacionOMunicipioExpedicion = comprobante.Emisor[i].ExpedidoEn.'@municipio'
                datosComprobante.estadoExpedicion               = Estado.findByNombre(comprobante.Emisor[i].ExpedidoEn.'@estado'as String)
                datosComprobante.paisExpedicion                 = Pais.findByNombre(comprobante.Emisor[i].ExpedidoEn.'@pais'as String)
                datosComprobante.codigoPostalExpedicion         = comprobante.Emisor[i].ExpedidoEn.'@codigoPostal'
                                                
                if (emisor instanceof PersonaMoral)
                println "el emisor si es una instancia de Persona Moral"
                datosComprobante.emisor = emisor
            }
            else{ // Persona Física
                if(largoRfc.length()==longitudRfcFisica){
                    PersonaFisica emisor = new PersonaFisica()
                    emisor.rfc                          = comprobante.Emisor[i].'@rfc'
                    emisor.nombres           = comprobante.Emisor[i].'@nombre'
                    tmp2 = emisor.nombres as String
                    def ncs = movimientoService.separarNombreCompleto(tmp2)
                    println ncs
                    emisor.calleFiscal                  = comprobante.Emisor[i].DomicilioFiscal.'@calle'
                    emisor.numeroExteriorFiscal         = comprobante.Emisor[i].DomicilioFiscal.'@noExterior'
                    emisor.numeroInteriorFiscal         = comprobante.Emisor[i].DomicilioFiscal.'@noInterior'
                    emisor.coloniaFiscal                = comprobante.Emisor[i].DomicilioFiscal.'@colonia'
                    emisor.delegacionOMunicipioFiscal   = comprobante.Emisor[i].DomicilioFiscal.'@municipio'
                    emisor.estadoFiscal                 = Estado.findByNombre(comprobante.Emisor[i].DomicilioFiscal.'@estado' as String)
                    emisor.paisFiscal                   = Pais.findByNombre(comprobante.Emisor[i].DomicilioFiscal.'@pais' as String)
                    emisor.codigoPostalFiscal           = comprobante.Emisor[i].DomicilioFiscal.'@codigoPostal'
                    emisor.telefono                     = comprobante.Emisor[i].DomicilioFiscal.'@telefono'
                    emisor.email                        = comprobante.Emisor[i].DomicilioFiscal.'@email'
                    emisor.regimenFiscal                = comprobante.Emisor[i].RegimenFiscal.'@Regimen'
                    
                    if (emisor instanceof PersonaFisica)
                    println "el emisor si es una instancia de Persona Fisica"
                    datosComprobante.emisor = emisor
                }
            }
            
        }
        
        for(int i=0;i<totalReceptores;i++){
            largoRfc = comprobante.Receptor[i].'@rfc' as String        
            if(largoRfc.length()==longitudRfcMoral){ // Persona Moral
                PersonaMoral receptor                 = new PersonaMoral()
                receptor.rfc                          = comprobante.Receptor[i].'@rfc'
                receptor.denominacionSocial           = comprobante.Receptor[i].'@nombre'
                receptor.calleFiscal                  = comprobante.Receptor[i].DomicilioFiscal.'@calle'
                receptor.numeroExteriorFiscal         = comprobante.Receptor[i].DomicilioFiscal.'@noExterior'
                receptor.numeroInteriorFiscal         = comprobante.Receptor[i].DomicilioFiscal.'@noInterior'
                receptor.coloniaFiscal                = comprobante.Receptor[i].DomicilioFiscal.'@colonia'
                receptor.localidadFiscal                = comprobante.Receptor[i].Domicilio.'@localidad'                    
                receptor.delegacionOMunicipioFiscal   = comprobante.Receptor[i].DomicilioFiscal.'@municipio'
                receptor.estadoFiscal                 = Estado.findByNombre(comprobante.Receptor[i].DomicilioFiscal.'@estado' as String)
                receptor.paisFiscal                   = Pais.findByNombre(comprobante.Receptor[i].DomicilioFiscal.'@pais' as String)
                receptor.codigoPostalFiscal           = comprobante.Receptor[i].DomicilioFiscal.'@codigoPostal'
                receptor.telefono                     = comprobante.Receptor[i].DomicilioFiscal.'@telefono'
                receptor.email                        = comprobante.Receptor[i].DomicilioFiscal.'@email'
                receptor.regimenFiscal                = comprobante.Receptor[i].RegimenFiscal.'@Regimen'
                
                if (receptor instanceof PersonaMoral)
                println "el receptor si es una instancia de Persona Moral"
                datosComprobante.receptor = receptor
            }
            else{ // Persona Física
                if(largoRfc.length()==longitudRfcFisica){
                    PersonaFisica receptor = new PersonaFisica()
                    receptor.rfc                          = comprobante.Receptor[i].'@rfc'
                    receptor.nombres                      = comprobante.Receptor[i].'@nombre'                    
                    tmp2 = receptor.nombres as String
                    def ncs = movimientoService.separarNombreCompleto(tmp2)                    
                    int size = ncs.size() - 1
                    String reves = ""   
                    def cure                    
                    for(int j=size;j>=0;j--){                        
                        if(j == size)
                        receptor.apellidoMaterno = ncs[j]                        
                        if(j == size - 1)
                        receptor.apellidoPaterno = ncs[j]
                        if(j <= size - 2)                       
                        reves += ncs[j]
                    }
                    
                    cure = movimientoService.separarNombreCompleto(reves) 
                    int size2 = cure.size() - 1                    
                    receptor.nombres = ""                    
                    for(int k=size2; k>=0;k--){
                        receptor.nombres += cure[k]                        
                    }
                    receptor.calleFiscal                  = comprobante.Receptor[i].Domicilio.'@calle'                    
                    receptor.numeroExteriorFiscal         = comprobante.Receptor[i].Domicilio.'@noExterior'                    
                    receptor.numeroInteriorFiscal         = comprobante.Receptor[i].Domicilio.'@noInterior'                    
                    receptor.coloniaFiscal                = comprobante.Receptor[i].Domicilio.'@colonia'
                    receptor.localidadFiscal                = comprobante.Receptor[i].Domicilio.'@localidad'
                    receptor.delegacionOMunicipioFiscal   = comprobante.Receptor[i].Domicilio.'@municipio'                   
                    receptor.estadoFiscal                 = Estado.findByNombre(comprobante.Receptor[i].Domicilio.'@estado' as String)
                    println receptor.estadoFiscal
                    receptor.paisFiscal                   = Pais.findByNombre(comprobante.Receptor[i].Domicilio.'@pais' as String)
                    println receptor.paisFiscal
                    receptor.codigoPostalFiscal           = comprobante.Receptor[i].Domicilio.'@codigoPostal'                   
                    receptor.telefono                     = comprobante.Receptor[i].DomicilioFiscal.'@telefono'
                    receptor.email                        = comprobante.Receptor[i].DomicilioFiscal.'@email'
                    receptor.regimenFiscal                = comprobante.Receptor[i].RegimenFiscal.'@Regimen'                    
                    if (receptor instanceof PersonaFisica)
                    println "el receptor si es una instancia de Persona Fisica"
                    datosComprobante.receptor = receptor
                }
            }
            
        }
   
        String tmp
               
        for(int i=0;i<totalConceptos;i++){
            Concepto concepto = new Concepto()
            concepto.cantidad = comprobante.Conceptos.Concepto[i].'@cantidad'
            concepto.unidad = comprobante.Conceptos.Concepto[i].'@unidad'
            concepto.descripcion = comprobante.Conceptos.Concepto[i].'@descripcion'
            tmp = comprobante.Conceptos.Concepto[i].'@valorUnitario' as String
            concepto.valorUnitario = tmp as BigDecimal
            tmp = comprobante.Conceptos.Concepto[i].'@importe' as String
            concepto.importe = tmp as BigDecimal
            
            datosComprobante.conceptos = [concepto]
        }
        
        for(int i=0;i<totalImpuestos;i++){
            Impuesto impuesto = new Impuesto()
            impuesto.nombreDelImpuesto =  comprobante.Impuestos.Traslados.Traslado[i].'@impuesto'
            tmp = comprobante.Impuestos.Traslados.Traslado[i].'@tasa' as String
            impuesto.tasa =  tmp as BigDecimal
            tmp = comprobante.Impuestos.Traslados.Traslado[i].'@importe' as String
            impuesto.importe =  tmp as BigDecimal
            
            datosComprobante.impuestos = [impuesto]
        }
        
        def concepto 
        def conceptoMap
        def listaConceptos = []
        println "total de conceptos " + totalConceptos
        for (int i=0;i<totalConceptos;i++){
            concepto = comprobante.Conceptos.Concepto[i]
            conceptoMap = [cantidad:concepto.'@cantidad' as String,unidad:concepto.'@unidad' as String] 
            listaConceptos.add(conceptoMap)
        }
        /**
        println  "Datos del Comprobante: serie= " + datosComprobante.serie
        println "RFC Emisor: " + emisor.rfc
        println "RFC Receptor: " + receptor.rfc
        println "mapa " + conceptoMap.get("cantidad")    //desde el mapa
        println "desde lista " + listaConceptos.get(0)
        **/
        BigDecimal i = 0.0
        datosComprobante.conceptos.each{
            i+=it.importe
        }
        
        datosComprobante.importeNeto = i
        i=0.0
        datosComprobante.impuestos.each{
            i+=it.importe
        }
        /**tmp = comprobante.Impuestos.'@totalImpuestosTrasladados' as String
        datosComprobante.totalImpuestosTrasladados  = tmp as BigDecimal**/
        datosComprobante.totalImpuestosTrasladados  = i
        
        datosComprobante.total = datosComprobante.importeNeto + datosComprobante.totalImpuestosTrasladados
        /**if (lucas.delete())
            System.out.println("El fichero ha sido borrado satisfactoriamente");
        else
            System.out.println("El fichero no puede ser borrado");
            
        **/
        
        [movimientoInstance:datosComprobante]
    }
    
    def guardarIngreso(){
        println params
    }       
    
}
