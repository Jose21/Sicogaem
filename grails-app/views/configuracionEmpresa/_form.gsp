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

<div class="form-group fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'telefono', 'error')} required">
    <label class="col-lg-2 control-label" for="telefono">
        <g:message code="configuracionEmpresa.telefono.label" default="Telefono" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-lg-6">
        <g:field type="telefono" name="telefono" required="" value="${configuracionEmpresaInstance?.telefono}"/>
    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'estado', 'error')} required">
    <label for="estado" class="col-lg-2 control-label">
        <g:message code="configuracionEmpresa.estado.label" default="Estado" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-lg-4">
        <g:select id="estado" name="estado.id" from="${com.app.catalogos.Estado.list()}" optionKey="id" required="" value="${configuracionEmpresaInstance?.estado?.id}" class="many-to-one" noSelection="['':'-Elige-']"/>
    </div>
</div>


