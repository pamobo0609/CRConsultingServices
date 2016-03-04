
<%@ page import="cr.consultingservices.DA.Imagen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagen.label', default: 'Imagen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imagen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imagen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'imagen.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="imagen" title="${message(code: 'imagen.imagen.label', default: 'Imagen')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imagenInstanceList}" status="i" var="imagenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imagenInstance.id}">${fieldValue(bean: imagenInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: imagenInstance, field: "imagen")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imagenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
