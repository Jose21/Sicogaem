<%@ page import="com.app.Concepto" %>


<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="concepto.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cantidad" required="" value="${conceptoInstance?.cantidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="concepto.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${conceptoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="concepto.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unidad" value="${fieldValue(bean: conceptoInstance, field: 'unidad')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'valorUnitario', 'error')} required">
	<label for="valorUnitario">
		<g:message code="concepto.valorUnitario.label" default="Valor Unitario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorUnitario" value="${fieldValue(bean: conceptoInstance, field: 'valorUnitario')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'importe', 'error')} required">
	<label for="importe">
		<g:message code="concepto.importe.label" default="Importe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="importe" value="${fieldValue(bean: conceptoInstance, field: 'importe')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'movimiento', 'error')} required">
	<label for="movimiento">
		<g:message code="concepto.movimiento.label" default="Movimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="movimiento" name="movimiento.id" from="${com.app.Movimiento.list()}" optionKey="id" required="" value="${conceptoInstance?.movimiento?.id}" class="many-to-one"/>

</div>

