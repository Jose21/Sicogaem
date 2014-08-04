
<%@ page import="com.app.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movimiento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movimiento">
			
				<g:if test="${movimientoInstance?.concepto}">
				<li class="fieldcontain">
					<span id="concepto-label" class="property-label"><g:message code="movimiento.concepto.label" default="Concepto" /></span>
					
						<span class="property-value" aria-labelledby="concepto-label"><g:fieldValue bean="${movimientoInstance}" field="concepto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.emisor}">
				<li class="fieldcontain">
					<span id="emisor-label" class="property-label"><g:message code="movimiento.emisor.label" default="Emisor" /></span>
					
						<span class="property-value" aria-labelledby="emisor-label"><g:link controller="persona" action="show" id="${movimientoInstance?.emisor?.id}">${movimientoInstance?.emisor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.fechaDeCertificacion}">
				<li class="fieldcontain">
					<span id="fechaDeCertificacion-label" class="property-label"><g:message code="movimiento.fechaDeCertificacion.label" default="Fecha De Certificacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaDeCertificacion-label"><g:formatDate date="${movimientoInstance?.fechaDeCertificacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.folio}">
				<li class="fieldcontain">
					<span id="folio-label" class="property-label"><g:message code="movimiento.folio.label" default="Folio" /></span>
					
						<span class="property-value" aria-labelledby="folio-label"><g:fieldValue bean="${movimientoInstance}" field="folio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.folioFiscal}">
				<li class="fieldcontain">
					<span id="folioFiscal-label" class="property-label"><g:message code="movimiento.folioFiscal.label" default="Folio Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="folioFiscal-label"><g:fieldValue bean="${movimientoInstance}" field="folioFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.formaDePago}">
				<li class="fieldcontain">
					<span id="formaDePago-label" class="property-label"><g:message code="movimiento.formaDePago.label" default="Forma De Pago" /></span>
					
						<span class="property-value" aria-labelledby="formaDePago-label"><g:fieldValue bean="${movimientoInstance}" field="formaDePago"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.importeNeto}">
				<li class="fieldcontain">
					<span id="importeNeto-label" class="property-label"><g:message code="movimiento.importeNeto.label" default="Importe Neto" /></span>
					
						<span class="property-value" aria-labelledby="importeNeto-label"><g:fieldValue bean="${movimientoInstance}" field="importeNeto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.metodoDePago}">
				<li class="fieldcontain">
					<span id="metodoDePago-label" class="property-label"><g:message code="movimiento.metodoDePago.label" default="Metodo De Pago" /></span>
					
						<span class="property-value" aria-labelledby="metodoDePago-label"><g:fieldValue bean="${movimientoInstance}" field="metodoDePago"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.numeroDeSerieDeCertificadoDelEmisor}">
				<li class="fieldcontain">
					<span id="numeroDeSerieDeCertificadoDelEmisor-label" class="property-label"><g:message code="movimiento.numeroDeSerieDeCertificadoDelEmisor.label" default="Numero De Serie De Certificado Del Emisor" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeSerieDeCertificadoDelEmisor-label"><g:fieldValue bean="${movimientoInstance}" field="numeroDeSerieDeCertificadoDelEmisor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.numeroDeSerieDeCertificadoDelSat}">
				<li class="fieldcontain">
					<span id="numeroDeSerieDeCertificadoDelSat-label" class="property-label"><g:message code="movimiento.numeroDeSerieDeCertificadoDelSat.label" default="Numero De Serie De Certificado Del Sat" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeSerieDeCertificadoDelSat-label"><g:fieldValue bean="${movimientoInstance}" field="numeroDeSerieDeCertificadoDelSat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.receptor}">
				<li class="fieldcontain">
					<span id="receptor-label" class="property-label"><g:message code="movimiento.receptor.label" default="Receptor" /></span>
					
						<span class="property-value" aria-labelledby="receptor-label"><g:link controller="persona" action="show" id="${movimientoInstance?.receptor?.id}">${movimientoInstance?.receptor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.serie}">
				<li class="fieldcontain">
					<span id="serie-label" class="property-label"><g:message code="movimiento.serie.label" default="Serie" /></span>
					
						<span class="property-value" aria-labelledby="serie-label"><g:fieldValue bean="${movimientoInstance}" field="serie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.tipoDeOperacion}">
				<li class="fieldcontain">
					<span id="tipoDeOperacion-label" class="property-label"><g:message code="movimiento.tipoDeOperacion.label" default="Tipo De Operacion" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeOperacion-label"><g:link controller="tipoDeOperacion" action="show" id="${movimientoInstance?.tipoDeOperacion?.id}">${movimientoInstance?.tipoDeOperacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="movimiento.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${movimientoInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movimientoInstance?.totalImpuestosTrasladados}">
				<li class="fieldcontain">
					<span id="totalImpuestosTrasladados-label" class="property-label"><g:message code="movimiento.totalImpuestosTrasladados.label" default="Total Impuestos Trasladados" /></span>
					
						<span class="property-value" aria-labelledby="totalImpuestosTrasladados-label"><g:fieldValue bean="${movimientoInstance}" field="totalImpuestosTrasladados"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:movimientoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${movimientoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
