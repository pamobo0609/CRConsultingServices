<%@ page import="cr.consultingservices.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'Mi perfil', default: 'Mi perfil')}" />
		<title><g:message code="Mi perfil" args="[entityName]" /></title>

	
	
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1 style="color:#0B77B8"><g:message code="Mi perfil" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			<li class="fieldcontain">
				<span style="color:#939598" id="profilepic-label" class="property-label"><g:message code="user.profilepic.label" default="Foto de perfil" /></span>	
				
				<g:if test="${userInstance?.profilePic}">
					<img class="property-value" height=50 width=50 src="${userInstance.profilePic}" />
				</g:if>
			</li>
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span style="color:#939598" id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${userInstance?.apellido1}">
				<li class="fieldcontain">
					<span style="color:#939598" id="apellido1-label" class="property-label"><g:message code="user.apellido1.label" default="Primer apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido1-label"><g:fieldValue bean="${userInstance}" field="apellido1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.apellido2}">
				<li class="fieldcontain">
					<span style="color:#939598" id="apellido2-label" class="property-label"><g:message code="user.apellido2.label" default="Segundo apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido2-label"><g:fieldValue bean="${userInstance}" field="apellido2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.nombre}">
				<li class="fieldcontain">
					<span style="color:#939598" id="nombre-label" class="property-label"><g:message code="user.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${userInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${userInstance?.tel}">
				<li class="fieldcontain">
					<span style="color:#939598" id="nombre-label" class="property-label"><g:message code="user.tel.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="tel-label"><g:fieldValue bean="${userInstance}" field="tel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="Editar perfil" default="Editar perfil" /></g:link>
					<!--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Borrar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />-->
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
