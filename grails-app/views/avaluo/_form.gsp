<%@ page import="cr.consultingservices.DA.Avaluo" %>



<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="avaluo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${avaluoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'latitud', 'error')} required">
	<label for="latitud">
		<g:message code="avaluo.latitud.label" default="Latitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitud" value="${fieldValue(bean: avaluoInstance, field: 'latitud')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="avaluo.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitud" value="${fieldValue(bean: avaluoInstance, field: 'longitud')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="avaluo.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="provincia" name="provincia.id" from="${cr.consultingservices.DA.Provincia.list()}" optionKey="id" required="" value="${avaluoInstance?.provincia?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'canton', 'error')} required">
	<label for="canton">
		<g:message code="avaluo.canton.label" default="Canton" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="canton" name="canton.id" from="${cr.consultingservices.DA.Canton.list()}" optionKey="id" required="" value="${avaluoInstance?.canton?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'otrasSenas', 'error')} required">
	<label for="otrasSenas">
		<g:message code="avaluo.otrasSenas.label" default="Otras Senas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="otrasSenas" required="" value="${avaluoInstance?.otrasSenas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'creador', 'error')} required">
	<label for="creador">
		<g:message code="avaluo.creador.label" default="Creador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="creador" name="creador.id" from="${cr.consultingservices.DA.Usuario.list()}" optionKey="id" required="" value="${avaluoInstance?.creador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="avaluo.comentarios.label" default="Comentarios" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagenes', 'error')} ">
	<label for="imagenes">
		<g:message code="avaluo.imagenes.label" default="Imagenes" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'valorEstimado', 'error')} required">
	<label for="valorEstimado">
		<g:message code="avaluo.valorEstimado.label" default="Valor Estimado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorEstimado" value="${fieldValue(bean: avaluoInstance, field: 'valorEstimado')}" required=""/>

</div>

