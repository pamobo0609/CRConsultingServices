
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
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-avaluo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>
<fieldset class="form">
    <g:form action="list" method="GET">
        <div class="fieldcontain">
            <label for="query">Buscar avaluos:</label>
            <g:textField name="query" value="${params.query}"/>
        </div>
    </g:form>
</fieldset>
<table>
			<div class="pagination">
				<g:paginate total="${avaluoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
