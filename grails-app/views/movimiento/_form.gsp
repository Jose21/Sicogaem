<%@ page import="com.app.Movimiento" %>



<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'concepto', 'error')} required">
	<label for="concepto">
		<g:message code="movimiento.concepto.label" default="Concepto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="concepto" required="" value="${movimientoInstance?.concepto}"/>

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

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'importe', 'error')} required">
	<label for="importe">
		<g:message code="movimiento.importe.label" default="Importe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="importe" value="${fieldValue(bean: movimientoInstance, field: 'importe')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'iva', 'error')} required">
	<label for="iva">
		<g:message code="movimiento.iva.label" default="Iva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="iva" value="${fieldValue(bean: movimientoInstance, field: 'iva')}" required=""/>

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

