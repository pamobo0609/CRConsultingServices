<%@ page import="cr.consultingservices.DA.Imagen" %>



<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="imagen.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${imagenInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'imagen', 'error')} required">
	<label for="imagen">
		<g:message code="imagen.imagen.label" default="Imagen" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imagen" name="imagen" />

</div>

