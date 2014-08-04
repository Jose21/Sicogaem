<%@ page import="com.app.PersonaMoral" %>



<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="personaMoral.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${personaMoralInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'calleFiscal', 'error')} required">
	<label for="calleFiscal">
		<g:message code="personaMoral.calleFiscal.label" default="Calle Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleFiscal" required="" value="${personaMoralInstance?.calleFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'numeroExteriorFiscal', 'error')} required">
	<label for="numeroExteriorFiscal">
		<g:message code="personaMoral.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroExteriorFiscal" required="" value="${personaMoralInstance?.numeroExteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'numeroInteriorFiscal', 'error')} required">
	<label for="numeroInteriorFiscal">
		<g:message code="personaMoral.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroInteriorFiscal" required="" value="${personaMoralInstance?.numeroInteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'coloniaFiscal', 'error')} required">
	<label for="coloniaFiscal">
		<g:message code="personaMoral.coloniaFiscal.label" default="Colonia Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="coloniaFiscal" required="" value="${personaMoralInstance?.coloniaFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'localidadFiscal', 'error')} required">
	<label for="localidadFiscal">
		<g:message code="personaMoral.localidadFiscal.label" default="Localidad Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidadFiscal" required="" value="${personaMoral?.localidadFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'delegacionOMunicipioFiscal', 'error')} required">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="personaMoral.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="delegacionOMunicipioFiscal" required="" value="${personaMoralInstance?.delegacionOMunicipioFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'estadoFiscal', 'error')} required">
	<label for="estadoFiscal">
		<g:message code="personaMoral.estadoFiscal.label" default="Estado Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estadoFiscal" name="estadoFiscal.id" from="${com.app.catalogos.Estado.list()}" optionKey="id" required="" value="${personaMoralInstance?.estadoFiscal?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'paisFiscal', 'error')} required">
	<label for="paisFiscal">
		<g:message code="personaMoral.paisFiscal.label" default="Pais Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paisFiscal" name="paisFiscal.id" from="${com.app.catalogos.Pais.list()}" optionKey="id" required="" value="${personaMoralInstance?.paisFiscal?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'codigoPostalFiscal', 'error')} required">
	<label for="codigoPostalFiscal">
		<g:message code="personaMoral.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostalFiscal" required="" value="${personaMoralInstance?.codigoPostalFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="personaMoral.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${personaMoralInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="personaMoral.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${personaMoralInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'denominacionSocial', 'error')} required">
	<label for="denominacionSocial">
		<g:message code="personaMoral.denominacionSocial.label" default="Denominacion Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="denominacionSocial" required="" value="${personaMoralInstance?.denominacionSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'nombreComercial', 'error')} required">
	<label for="nombreComercial">
		<g:message code="personaMoral.nombreComercial.label" default="Nombre Comercial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreComercial" required="" value="${personaMoralInstance?.nombreComercial}"/>

</div>

