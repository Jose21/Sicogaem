<%@ page import="com.app.Movimiento" %>



<%--<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'concepto', 'error')} required">
	<label for="concepto">
		<g:message code="movimiento.concepto.label" default="Concepto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="concepto" required="" value="${movimientoInstance?.concepto}"/>

</div>--%>



<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'lugarDeExpedicion', 'error')} required">
	<label for="lugarDeExpedicion">
		<g:message code="movimiento.lugarDeExpedicion.label" default="Lugar De Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lugarDeExpedicion" required="" value="${movimientoInstance?.lugarDeExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'emisor', 'error')} required">
	<label for="emisor">
		<g:message code="movimiento.emisor.label" default="Emisor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emisor" name="emisor.id" from="${com.app.Persona.list()}" optionKey="id" required="" value="${movimientoInstance?.emisor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'fechaDeCertificacion', 'error')} required">
	<label for="fechaDeCertificacion">
		<g:message code="movimiento.fechaDeCertificacion.label" default="Fecha De Certificacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaDeCertificacion" precision="day"  value="${movimientoInstance?.fechaDeCertificacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'folio', 'error')} required">
	<label for="folio">
		<g:message code="movimiento.folio.label" default="Folio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="folio" required="" value="${movimientoInstance?.folio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'folioFiscal', 'error')} required">
	<label for="folioFiscal">
		<g:message code="movimiento.folioFiscal.label" default="Folio Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="folioFiscal" required="" value="${movimientoInstance?.folioFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'formaDePago', 'error')} required">
	<label for="formaDePago">
		<g:message code="movimiento.formaDePago.label" default="Forma De Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formaDePago" required="" value="${movimientoInstance?.formaDePago}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'importeNeto', 'error')} required">
	<label for="importeNeto">
		<g:message code="movimiento.importeNeto.label" default="Importe Neto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="importeNeto" value="${fieldValue(bean: movimientoInstance, field: 'importeNeto')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'metodoDePago', 'error')} required">
	<label for="metodoDePago">
		<g:message code="movimiento.metodoDePago.label" default="Metodo De Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="metodoDePago" required="" value="${movimientoInstance?.metodoDePago}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroDeSerieDeCertificadoDelEmisor', 'error')} required">
	<label for="numeroDeSerieDeCertificadoDelEmisor">
		<g:message code="movimiento.numeroDeSerieDeCertificadoDelEmisor.label" default="Numero De Serie De Certificado Del Emisor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroDeSerieDeCertificadoDelEmisor" required="" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelEmisor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroDeSerieDeCertificadoDelSat', 'error')} required">
	<label for="numeroDeSerieDeCertificadoDelSat">
		<g:message code="movimiento.numeroDeSerieDeCertificadoDelSat.label" default="Numero De Serie De Certificado Del Sat" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroDeSerieDeCertificadoDelSat" required="" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelSat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'receptor', 'error')} required">
	<label for="receptor">
		<g:message code="movimiento.receptor.label" default="Receptor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="receptor" name="receptor.id" from="${com.app.Persona.list()}" optionKey="id" required="" value="${movimientoInstance?.receptor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'serie', 'error')} required">
	<label for="serie">
		<g:message code="movimiento.serie.label" default="Serie" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serie" required="" value="${movimientoInstance?.serie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'tipoDeOperacion', 'error')} required">
	<label for="tipoDeOperacion">
		<g:message code="movimiento.tipoDeOperacion.label" default="Tipo De Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoDeOperacion" name="tipoDeOperacion.id" from="${com.app.TipoDeOperacion.list()}" optionKey="id" required="" value="${movimientoInstance?.tipoDeOperacion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="movimiento.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: movimientoInstance, field: 'total')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'totalImpuestosTrasladados', 'error')} required">
	<label for="totalImpuestosTrasladados">
		<g:message code="movimiento.totalImpuestosTrasladados.label" default="Total Impuestos Trasladados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalImpuestosTrasladados" value="${fieldValue(bean: movimientoInstance, field: 'totalImpuestosTrasladados')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'calleExpedicion', 'error')} required">
	<label for="calleExpedicion">
		<g:message code="movimiento.calleFiscal.label" default="Calle: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleExpedicion" required="" value="${moviemientoInstance?.calleExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroExteriorExpedicion', 'error')} required">
	<label for="numeroExteriorExpedicion">
		<g:message code="movimiento.numeroExteriorExpedicion.label" default="Numero Exterior Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroExteriorExpedicion" required="" value="${movimientoInstance?.numeroExteriorExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroInteriorExpedicion', 'error')} required">
	<label for="numeroInteriorExpedicion">
		<g:message code="movimiento.numeroInteriorExpedicion.label" default="Numero Interior Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroInteriorExpedicion" required="" value="${movimientoInstance?.numeroInteriorExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'coloniaExpedicion', 'error')} required">
	<label for="coloniaExpedicion">
		<g:message code="movimiento.coloniaExpedicion.label" default="Colonia Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="coloniaExpedicion" required="" value="${movimientoInstance?.coloniaExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'delegacionOMunicipioExpedicion', 'error')} required">
	<label for="delegacionOMunicipioExpedicion">
		<g:message code="movimiento.delegacionOMunicipioExpedicion.label" default="Delegacion OM unicipio Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="delegacionOMunicipioExpedicion" required="" value="${movimientoInstance?.delegacionOMunicipioExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'estadoExpedicion', 'error')} required">
	<label for="estadoExpedicion">
		<g:message code="movimiento.estadoExpedicion.label" default="Estado Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estadoExpedicion" name="estadoExpedicion.id" from="${com.app.catalogos.Estado.list()}" optionKey="id" required="" value="${movimientoInstance?.estadoExpedicion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'paisExpedicion', 'error')} required">
	<label for="paisExpedicion">
		<g:message code="movimiento.paisExpedicion.label" default="Pais Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paisExpedicion" name="paisExpedicion.id" from="${com.app.catalogos.Pais.list()}" optionKey="id" required="" value="${movimientoInstance?.paisExpedicion?.id}" class="many-to-one"/>
        
</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'codigoPostalExpedicion', 'error')} required">
	<label for="codigoPostalExpedicion">
		<g:message code="movimiento.codigoPostalExpedicion.label" default="Codigo Postal Expedicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostalExpedicion" required="" value="${movimientoInstance?.codigoPostalExpedicion}"/>

</div>
