<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaluo.label', default: 'Avaluo')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-avaluo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a></li>
				<li><g:link class="list" action="index"><g:message code="Mis avaluos" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-avaluo" class="content scaffold-create" role="main">
			<h1 style="color:#0B77B8"><g:message code="Crear avaluo" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${avaluoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${avaluoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:avaluoInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'Crear avaluo', default: 'Crear avaluo')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
