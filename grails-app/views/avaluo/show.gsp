
<%@ page import="cr.consultingservices.DA.Avaluo" %>
<!DOCTYPE html>
<html>

	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaluo.label', default: 'Avaluo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
		<meta name="viewport" content="initial-scale=1.0">
    	<meta charset="utf-8">
		<style>
      		#map {
        		height: 100%;
        		overflow:visible;
        		background-color:black;
      		}
    </style>
		
	</head>
	<body onload="initMap()">
		<a href="#show-avaluo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="Home"/></a></li>
				<li><g:link class="list" action="index"><g:message code="Mis avaluos" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="Crear avaluo" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avaluo" class="content scaffold-show" role="main">
			<h1 style="color:#0B77B8"><g:message code="Mi avaluo" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avaluo">
			
				<g:if test="${avaluoInstance?.descripcion}">
				<li class="fieldcontain">
					<span style="color:#939598" id="descripcion-label" class="property-label"><g:message code="avaluo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${avaluoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.latitud}">
				<li class="fieldcontain">
					<span style="color:#939598" id="latitud-label" class="property-label"><g:message code="avaluo.latitud.label" default="Latitud" /></span>
					
						<span class="property-value" aria-labelledby="latitud-label"><g:fieldValue bean="${avaluoInstance}" field="latitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.longitud}">
				<li class="fieldcontain">
					<span  style="color:#939598" id="longitud-label" class="property-label"><g:message code="avaluo.longitud.label" default="Longitud" /></span>
					
						<span class="property-value" aria-labelledby="longitud-label"><g:fieldValue bean="${avaluoInstance}" field="longitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.provincia}">
				<li class="fieldcontain">
					<span style="color:#939598" id="provincia-label" class="property-label"><g:message code="avaluo.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label">${avaluoInstance?.provincia?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.canton}">
				<li class="fieldcontain">
					<span style="color:#939598" id="canton-label" class="property-label"><g:message code="avaluo.canton.label" default="Canton" /></span>
					
						<span class="property-value" aria-labelledby="canton-label">${avaluoInstance?.canton?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.otrasSenas}">
				<li class="fieldcontain">
					<span style="color:#939598" id="otrasSenas-label" class="property-label"><g:message code="avaluo.otrasSenas.label" default="Otras Senas" /></span>
					
						<span class="property-value" aria-labelledby="otrasSenas-label"><g:fieldValue bean="${avaluoInstance}" field="otrasSenas"/></span>
					
				</li>
				</g:if>
				
				<script>
				var map;
				function initMap() {
				  map = new google.maps.Map(document.getElementById('map'), {
				    center: {lat: -34.397, lng: 150.644},
				    zoom: 8
				  });
				}
				window.addEventListener('load', initMap, false)
				</script>
    			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATyoneVleIc_TNlkML6km1YfLw_LxO99Q&callback=initMap"
        		async defer></script>
				
				
				
				<li class="fieldcontain">
					<span style="color:#939598" id="map-label" class="property-label"><g:message code="mapa" default="Mapa" /></span>
					<div id="map">
					</div>
				</li>
				
			
				<g:if test="${avaluoInstance?.creador}">
				<li class="fieldcontain">
					<span style="color:#939598" id="creador-label" class="property-label"><g:message code="avaluo.creador.label" default="Creador" /></span>
					
					<span class="property-value" aria-labelledby="creador-label"><g:link controller="usuario" style="color:black;" action="show" id="${avaluoInstance?.creador?.id}">${avaluoInstance?.creador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.comentarios}">
				<li class="fieldcontain">
					<span style="color:#939598" id="comentarios-label" class="property-label"><g:message code="avaluo.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${avaluoInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen1}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen1-label" class="property-label"><g:message code="Imagen 1" default="Imagen 1" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen2}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen2-label" class="property-label"><g:message code="Imagen 2" default="Imagen 2" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen3}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen3-label" class="property-label"><g:message code="Imagen 3" default="Imagen 3" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen4}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen4-label" class="property-label"><g:message code="Imagen 4" default="Imagen 4" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen5}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen5-label" class="property-label"><g:message code="Imagen 5" default="Imagen 5" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen6}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen6-label" class="property-label"><g:message code="Imagen 6" default="Imagen 6" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen7}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen7-label" class="property-label"><g:message code="Imagen 7" default="Imagen 7" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen8}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen8-label" class="property-label"><g:message code="Imagen 8" default="Imagen 8" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen9}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen9-label" class="property-label"><g:message code="Imagen 9" default="Imagen 9" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.imagen10}">
				<li class="fieldcontain">
					<span style="color:#939598" id="imagen10-label" class="property-label"><g:message code="Imagen 10" default="Imagen 10" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaluoInstance?.valorEstimado}">
				<li class="fieldcontain">
					<span style="color:#939598" id="valorEstimado-label" class="property-label"><g:message code="avaluo.valorEstimado.label" default="Valor Estimado" /></span>
					
						<span class="property-value" aria-labelledby="valorEstimado-label"><g:fieldValue bean="${avaluoInstance}" field="valorEstimado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaluoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaluoInstance}"><g:message code="Editar" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="Borrar avaluo" onclick="return confirm('${message(code: 'Esta seguro?', default: 'Esta seguro?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
