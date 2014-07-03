<%@ page import="com.app.catalogos.ConfiguracionEmpresa" %>



<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'nombreDeEmpresa', 'error')} required">
	<label for="nombreDeEmpresa">
		<g:message code="configuracionEmpresa.nombreDeEmpresa.label" default="Nombre De Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreDeEmpresa" required="" value="${configuracionEmpresaInstance?.nombreDeEmpresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'domicilio', 'error')} required">
	<label for="domicilio">
		<g:message code="configuracionEmpresa.domicilio.label" default="Domicilio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="domicilio" required="" value="${configuracionEmpresaInstance?.domicilio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="configuracionEmpresa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${configuracionEmpresaInstance?.email}"/>

</div>

