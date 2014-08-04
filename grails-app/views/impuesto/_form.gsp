<%@ page import="com.app.Impuesto" %>



<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'nombreDelImpuesto', 'error')} required">
	<label for="nombreDelImpuesto">
		<g:message code="impuesto.nombreDelImpuesto.label" default="Nombre Del Impuesto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreDelImpuesto" required="" value="${impuestoInstance?.nombreDelImpuesto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'tasa', 'error')} required">
	<label for="tasa">
		<g:message code="impuesto.tasa.label" default="Tasa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tasa" value="${fieldValue(bean: impuestoInstance, field: 'tasa')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'importe', 'error')} required">
	<label for="importe">
		<g:message code="impuesto.importe.label" default="Importe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="importe" value="${fieldValue(bean: impuestoInstance, field: 'importe')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'movimiento', 'error')} required">
	<label for="movimiento">
		<g:message code="impuesto.movimiento.label" default="Movimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="movimiento" name="movimiento.id" from="${com.app.Movimiento.list()}" optionKey="id" required="" value="${impuestoInstance?.movimiento?.id}" class="many-to-one"/>

</div>

