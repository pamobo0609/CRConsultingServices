<%@ page import="cr.consultingservices.DA.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'comentario', 'error')} required">
	<label for="comentario">
		<g:message code="comentario.comentario.label" default="Comentario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comentario" required="" value="${comentarioInstance?.comentario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="comentario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${cr.consultingservices.DA.Usuario.list()}" optionKey="id" required="" value="${comentarioInstance?.usuario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fechaPosteado', 'error')} required">
	<label for="fechaPosteado">
		<g:message code="comentario.fechaPosteado.label" default="Fecha Posteado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaPosteado" precision="day"  value="${comentarioInstance?.fechaPosteado}"  />

</div>

