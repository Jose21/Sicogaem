<%@ page import="com.app.catalogos.ConfiguracionEmpresa" %>


<div class="form-group fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'nombreDeEmpresa', 'error')} required">    
    <label class="col-lg-2 control-label" for="nombreDeEmpresa">
        <g:message code="configuracionEmpresa.nombreDeEmpresa.label" default="Nombre De Empresa" />
        <span class="required-indicator">*</span>
    </label>  
    <div class="col-lg-6">
        <g:textField class="form-control" name="nombreDeEmpresa" required="" value="${configuracionEmpresaInstance?.nombreDeEmpresa}"/>           
    </div>
</div><!-- End .control-group  -->

<div class="form-group fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'domicilio', 'error')} required">
    <label class="col-lg-2 control-label" for="domicilio">
        <g:message code="configuracionEmpresa.domicilio.label" default="Domicilio" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-lg-6">
        <g:textField name="domicilio" required="" value="${configuracionEmpresaInstance?.domicilio}"/>
    </div>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'email', 'error')} required">
    <label class="col-lg-2 control-label" for="email">
        <g:message code="configuracionEmpresa.email.label" default="Email" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-lg-6">
        <g:field type="email" name="email" required="" value="${configuracionEmpresaInstance?.email}"/>
    </div>
</div>

