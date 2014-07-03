
<%@ page import="com.app.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movimiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="concepto" title="${message(code: 'movimiento.concepto.label', default: 'Concepto')}" />
					
						<th><g:message code="movimiento.emisor.label" default="Emisor" /></th>
					
						<g:sortableColumn property="fechaDeCertificacion" title="${message(code: 'movimiento.fechaDeCertificacion.label', default: 'Fecha De Certificacion')}" />
					
						<g:sortableColumn property="folio" title="${message(code: 'movimiento.folio.label', default: 'Folio')}" />
					
						<g:sortableColumn property="folioFiscal" title="${message(code: 'movimiento.folioFiscal.label', default: 'Folio Fiscal')}" />
					
						<g:sortableColumn property="importe" title="${message(code: 'movimiento.importe.label', default: 'Importe')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movimientoInstanceList}" status="i" var="movimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movimientoInstance.id}">${fieldValue(bean: movimientoInstance, field: "concepto")}</g:link></td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "emisor")}</td>
					
						<td><g:formatDate date="${movimientoInstance.fechaDeCertificacion}" /></td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "folio")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "folioFiscal")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "importe")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movimientoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
