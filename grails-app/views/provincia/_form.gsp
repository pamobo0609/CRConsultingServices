<%@ page import="cr.consultingservices.DA.Provincia" %>



<div class="fieldcontain ${hasErrors(bean: provinciaInstance, field: 'nombreProvincia', 'error')} required">
	<label for="nombreProvincia">
		<g:message code="provincia.nombreProvincia.label" default="Nombre Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreProvincia" required="" value="${provinciaInstance?.nombreProvincia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: provinciaInstance, field: 'cantones', 'error')} required">
	<label for="cantones">
		<g:message code="provincia.cantones.label" default="Cantones" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

