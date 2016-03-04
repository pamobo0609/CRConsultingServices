
<%@ page import="cr.consultingservices.DA.Provincia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'provincia.label', default: 'Provincia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-provincia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-provincia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list provincia">
			
				<g:if test="${provinciaInstance?.nombreProvincia}">
				<li class="fieldcontain">
					<span id="nombreProvincia-label" class="property-label"><g:message code="provincia.nombreProvincia.label" default="Nombre Provincia" /></span>
					
						<span class="property-value" aria-labelledby="nombreProvincia-label"><g:fieldValue bean="${provinciaInstance}" field="nombreProvincia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${provinciaInstance?.cantones}">
				<li class="fieldcontain">
					<span id="cantones-label" class="property-label"><g:message code="provincia.cantones.label" default="Cantones" /></span>
					
						<span class="property-value" aria-labelledby="cantones-label"><g:fieldValue bean="${provinciaInstance}" field="cantones"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:provinciaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${provinciaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
