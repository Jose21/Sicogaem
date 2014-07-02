<%@ page import="com.app.PersonaFisica" %>



<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="personaFisica.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${personaFisicaInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'calleFiscal', 'error')} required">
	<label for="calleFiscal">
		<g:message code="personaFisica.calleFiscal.label" default="Calle Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleFiscal" required="" value="${personaFisicaInstance?.calleFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'numeroExteriorFiscal', 'error')} required">
	<label for="numeroExteriorFiscal">
		<g:message code="personaFisica.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroExteriorFiscal" required="" value="${personaFisicaInstance?.numeroExteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'numeroInteriorFiscal', 'error')} required">
	<label for="numeroInteriorFiscal">
		<g:message code="personaFisica.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroInteriorFiscal" required="" value="${personaFisicaInstance?.numeroInteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'coloniaFiscal', 'error')} required">
	<label for="coloniaFiscal">
		<g:message code="personaFisica.coloniaFiscal.label" default="Colonia Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="coloniaFiscal" required="" value="${personaFisicaInstance?.coloniaFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'delegacionOMunicipioFiscal', 'error')} required">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="personaFisica.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="delegacionOMunicipioFiscal" required="" value="${personaFisicaInstance?.delegacionOMunicipioFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'estadoFiscal', 'error')} required">
	<label for="estadoFiscal">
		<g:message code="personaFisica.estadoFiscal.label" default="Estado Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estadoFiscal" name="estadoFiscal.id" from="${com.app.catalogos.Estado.list()}" optionKey="id" required="" value="${personaFisicaInstance?.estadoFiscal?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'paisFiscal', 'error')} required">
	<label for="paisFiscal">
		<g:message code="personaFisica.paisFiscal.label" default="Pais Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paisFiscal" name="paisFiscal.id" from="${com.app.catalogos.Pais.list()}" optionKey="id" required="" value="${personaFisicaInstance?.paisFiscal?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'codigoPostalFiscal', 'error')} required">
	<label for="codigoPostalFiscal">
		<g:message code="personaFisica.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostalFiscal" required="" value="${personaFisicaInstance?.codigoPostalFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="personaFisica.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${personaFisicaInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="personaFisica.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${personaFisicaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="personaFisica.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${personaFisicaInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="personaFisica.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${personaFisicaInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="personaFisica.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${personaFisicaInstance?.apellidoMaterno}"/>

</div>

