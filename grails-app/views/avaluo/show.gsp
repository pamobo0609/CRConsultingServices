
<%@ page import="cr.consultingservices.DA.Avaluo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaluo.label', default: 'Avaluo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-avaluo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avaluo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avaluo">
			
				<g:if test="${avaluoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="avaluo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${avaluoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.latitud}">
				<li class="fieldcontain">
					<span id="latitud-label" class="property-label"><g:message code="avaluo.latitud.label" default="Latitud" /></span>
					
						<span class="property-value" aria-labelledby="latitud-label"><g:fieldValue bean="${avaluoInstance}" field="latitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.longitud}">
				<li class="fieldcontain">
					<span id="longitud-label" class="property-label"><g:message code="avaluo.longitud.label" default="Longitud" /></span>
					
						<span class="property-value" aria-labelledby="longitud-label"><g:fieldValue bean="${avaluoInstance}" field="longitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.provincia}">
				<li class="fieldcontain">
					<span id="provincia-label" class="property-label"><g:message code="avaluo.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label"><g:link controller="provincia" action="show" id="${avaluoInstance?.provincia?.id}">${avaluoInstance?.provincia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.canton}">
				<li class="fieldcontain">
					<span id="canton-label" class="property-label"><g:message code="avaluo.canton.label" default="Canton" /></span>
					
						<span class="property-value" aria-labelledby="canton-label"><g:link controller="canton" action="show" id="${avaluoInstance?.canton?.id}">${avaluoInstance?.canton?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.otrasSenas}">
				<li class="fieldcontain">
					<span id="otrasSenas-label" class="property-label"><g:message code="avaluo.otrasSenas.label" default="Otras Senas" /></span>
					
						<span class="property-value" aria-labelledby="otrasSenas-label"><g:fieldValue bean="${avaluoInstance}" field="otrasSenas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.creador}">
				<li class="fieldcontain">
					<span id="creador-label" class="property-label"><g:message code="avaluo.creador.label" default="Creador" /></span>
					
						<span class="property-value" aria-labelledby="creador-label"><g:link controller="usuario" action="show" id="${avaluoInstance?.creador?.id}">${avaluoInstance?.creador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="avaluo.comentarios.label" default="Comentarios" /></span>
					
						<span class="property-value" aria-labelledby="comentarios-label"><g:fieldValue bean="${avaluoInstance}" field="comentarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagenes}">
				<li class="fieldcontain">
					<span id="imagenes-label" class="property-label"><g:message code="avaluo.imagenes.label" default="Imagenes" /></span>
					
						<span class="property-value" aria-labelledby="imagenes-label"><g:fieldValue bean="${avaluoInstance}" field="imagenes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.valorEstimado}">
				<li class="fieldcontain">
					<span id="valorEstimado-label" class="property-label"><g:message code="avaluo.valorEstimado.label" default="Valor Estimado" /></span>
					
						<span class="property-value" aria-labelledby="valorEstimado-label"><g:fieldValue bean="${avaluoInstance}" field="valorEstimado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaluoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaluoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
