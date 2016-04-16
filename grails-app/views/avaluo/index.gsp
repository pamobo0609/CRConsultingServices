
<%@ page import="cr.consultingservices.DA.Avaluo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaluo.label', default: 'Avaluo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-avaluo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a></li>
				<li><g:link class="create" action="create"><g:message code="Crear avaluo" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-avaluo" class="content scaffold-list" role="main">
			<h1 style="color:#0B77B8"><g:message code="Mis avaluos" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'avaluo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="latitud" title="${message(code: 'avaluo.latitud.label', default: 'Latitud')}" />
					
						<g:sortableColumn property="longitud" title="${message(code: 'avaluo.longitud.label', default: 'Longitud')}" />
					
						<th><g:message code="avaluo.provincia.label" default="Provincia" /></th>
					
						<th><g:message code="avaluo.canton.label" default="Canton" /></th>
					
						<g:sortableColumn property="otrasSenas" title="${message(code: 'avaluo.otrasSenas.label', default: 'Otras Senas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${avaluoInstanceList}" status="i" var="avaluoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" style="color:#939598;" id="${avaluoInstance.id}">${fieldValue(bean: avaluoInstance, field: "descripcion")}</g:link></td>
					
						<td style="color:#939598;">${fieldValue(bean: avaluoInstance, field: "latitud")}</td>
					
						<td style="color:#939598;">${fieldValue(bean: avaluoInstance, field: "longitud")}</td>
					
						<td style="color:#939598;">${fieldValue(bean: avaluoInstance, field: "provincia")}</td>
					
						<td style="color:#939598;">${fieldValue(bean: avaluoInstance, field: "canton")}</td>
					
						<td style="color:#939598;">${fieldValue(bean: avaluoInstance, field: "otrasSenas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${avaluoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
