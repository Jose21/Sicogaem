<%@ page import="com.app.Persona" %>

    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'rfc', 'error')} required">
        <label for="rfc">
            <g:message code="persona.rfc.label" default="Rfc" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.rfc}">
        <g:textField name="rfc" maxlength="13" required="" value="${personaInstance?.rfc}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>



    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'calleFiscal', 'error')} required">
        <label for="calleFiscal">
            <g:message code="persona.calleFiscal.label" default="Calle Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.calleFiscal}">
        <g:textField name="calleFiscal" required="" value="${personaInstance?.calleFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'numeroExteriorFiscal', 'error')} required">
        <label for="numeroExteriorFiscal">
            <g:message code="persona.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.numeroExteriorFiscal}">
        <g:textField name="numeroExteriorFiscal" required="" value="${personaInstance?.numeroExteriorFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'numeroInteriorFiscal', 'error')} required">
        <label for="numeroInteriorFiscal">
            <g:message code="persona.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.numeroInteriorFiscal}">
        <g:textField name="numeroInteriorFiscal" required="" value="${personaInstance?.numeroInteriorFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'coloniaFiscal', 'error')} required">
        <label for="coloniaFiscal">
            <g:message code="persona.coloniaFiscal.label" default="Colonia Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.coloniaFiscal}">
        <g:textField name="coloniaFiscal" required="" value="${personaInstance?.coloniaFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'delegacionOMunicipioFiscal', 'error')} required">
        <label for="delegacionOMunicipioFiscal">
            <g:message code="persona.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.delegacionOMunicipioFiscal}">
        <g:textField name="delegacionOMunicipioFiscal" required="" value="${personaInstance?.delegacionOMunicipioFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'estadoFiscal', 'error')} required">
        <label for="estadoFiscal">
            <g:message code="persona.estadoFiscal.label" default="Estado Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.estadoFiscal?.nombre}">
        <g:textField id="estadoFiscal" name="estadoFiscal" required="" value="${movimientoInstance?.estadoFiscal?.nombre}"/>        
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'paisFiscal', 'error')} required">
        <label for="paisFiscal">
            <g:message code="persona.paisFiscal.label" default="Pais Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.paisFiscal?.nombre}">
        <g:textField id="paisFiscal" name="paisFiscal" required="" value="${movimientoInstance?.paisFiscal?.nombre}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'codigoPostalFiscal', 'error')} required">
        <label for="codigoPostalFiscal">
            <g:message code="persona.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.codigoPostalFiscal}">
        <g:textField name="codigoPostalFiscal" required="" value="${personaInstance?.codigoPostalFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} required">
        <label for="telefono">
            <g:message code="persona.telefono.label" default="Telefono" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.telefono}">
        <g:textField name="telefono" required="" value="${personaInstance?.telefono}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>


    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} required">
        <label for="email">
            <g:message code="persona.email.label" default="Email" />
            <span class="required-indicator">*</span>
        </label>
        <g:if test="${personaInstance?.email}">
        <g:field type="email" name="email" required="" value="${personaInstance?.email}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>

    <div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'regimenFiscal', 'error')} required">
	<label for="regimenFiscal">
		<g:message code="persona.regimenFiscal.label" default="Régimen Fiscal" />
		<span class="required-indicator">*</span>
	</label>
        <g:if test="${personaInstance?.regimenFiscal}">
	<g:textField name="regimenFiscal" required="" value="${personaInstance?.regimenFiscal}"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </div>