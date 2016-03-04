<%@ page import="cr.consultingservices.DA.Canton" %>



<div class="fieldcontain ${hasErrors(bean: cantonInstance, field: 'nombreCanton', 'error')} required">
	<label for="nombreCanton">
		<g:message code="canton.nombreCanton.label" default="Nombre Canton" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreCanton" required="" value="${cantonInstance?.nombreCanton}"/>

</div>

