<%@ page import="cr.consultingservices.DA.Avaluo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaluo.label', default: 'Avaluo')}" />
		<title>Buscar avaluos</title>
	</head>
<body>
    <div id="search-avaluo" class="content scaffold-serch" role="main">
        <h1>
            Buscar avaluos
        </h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">s
                ${flash.message}
            </div>
        </g:if>
        <g:hasErrors bean="${avaluoInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${avaluoInstance}" var="error">
                    <li><g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}" /></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form name="avaluoForm" method="post">
             <div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'avaluo', 'error')} required">
                
<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="avaluo.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="provincia" name="provincia.nombreProvincia" from="${cr.consultingservices.DA.Provincia.list()}" optionKey="id" required="" value="${avaluoInstance?.provincia?.nombreProvincia}" class="many-to-one"/>

</div>
                
<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'canton', 'error')} required">
	<label for="canton">
		<g:message code="avaluo.canton.label" default="Canton" />
	</label>
	<g:select id="provincia" name="canton.nombreCanton" from="${cr.consultingservices.DA.Canton.list()}" optionKey="id" value="${avaluoInstance?.canton?.nombreCanton}" class="many-to-one"/>

</div>
                
                <div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'valorEstimado', 'error')} required">
	<label for="valorEstimado">
		<g:message code="avaluo.valorEstimado.label" default="Valor estimado:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorEstimado" value="${fieldValue(bean: avaluoInstance, field: 'valorEstimado')}" type="text"/>

</div>
				 
            </div>
            <br>
            <fieldset class="buttons">
				<g:actionSubmit action="search" name="search" class="search" value="${message(code: 'default.search.label', default: 'Buscar')}" />
            </fieldset>
		</g:form>
	</div>
</body>
</html>