<%@ page import="cr.consultingservices.DA.Avaluo" %>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="avaluo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripcion" required="" value="${avaluoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'latitud', 'error')} required">
	<label for="latitud">
		<g:message code="avaluo.latitud.label" default="Latitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitud" value="${fieldValue(bean: avaluoInstance, field: 'latitud')}" required="" type="float"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="avaluo.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitud" value="${fieldValue(bean: avaluoInstance, field: 'longitud')}" required="" type="float"/>

</div>

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
// Determine support for Geolocation
if (navigator.geolocation) {
	// Locate position
	navigator.geolocation.getCurrentPosition(displayPosition, errorFunction);
} else {
	alert('Parece que los servicios de localizacion no son soportados por este navegador. Por favor utilice uno que lo soporte.');
}

// Success callback function
function displayPosition(pos) {
	var mylat = pos.coords.latitude;
	var mylong = pos.coords.longitude;
	
	var longitude = document.getElementById("longitud");
	longitude.value = mylong;
	var lattitude = document.getElementById("latitud");
	lattitude.value = mylat;

//Load Google Map
var latlng = new google.maps.LatLng(mylat, mylong);
	var myOptions = {
		zoom: 15,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.HYBRID
	};

var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

//Add marker
var marker = new google.maps.Marker({
		 position: latlng,
		 map: map,
		 title:"You are here"
	 });
}

// Error callback function
function errorFunction(pos) {
	
}
</script>

<style type="text/css">
	#map_canvas {
		height: 85%;
		width: 100%;
	}
	</style>

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
	<g:textArea name="otrasSenas" required="" value="${avaluoInstance?.otrasSenas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="avaluo.observaciones.label" default="Observaciones" />
	</label>
	<g:textArea name="observaciones" required="" value="${avaluoInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'valorEstimado')} required">
	<label for="valorEstimado">
		<g:message code="avaluo.valorEstimado.label" default="Valor estimado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valorEstimado" value="${fieldValue(bean: avaluoInstance, 'valorEstimado') }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen1', 'error')} ">
	<label for="imagen1">
		<g:message code="avaluo.imagen1.label" default="Imagen1" />
		
	</label>
	<input type="file" id="imagen1" name="imagen1" class="file_input" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen2', 'error')} ">
	<label for="imagen2">
		<g:message code="avaluo.imagen2.label" default="Imagen2" />
		
	</label>
	<input type="file" id="imagen2" name="imagen2" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen3', 'error')} ">
	<label for="imagen3">
		<g:message code="avaluo.imagen3.label" default="Imagen3" />
		
	</label>
	<input type="file" id="imagen3" name="imagen3" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen4', 'error')} ">
	<label for="imagen4">
		<g:message code="avaluo.imagen4.label" default="Imagen4" />
		
	</label>
	<input type="file" id="imagen4" name="imagen4" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen5', 'error')} ">
	<label for="imagen5">
		<g:message code="avaluo.imagen5.label" default="Imagen5" />
		
	</label>
	<input type="file" id="imagen5" name="imagen5" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen6', 'error')} ">
	<label for="imagen6">
		<g:message code="avaluo.imagen6.label" default="Imagen6" />
		
	</label>
	<input type="file" id="imagen6" name="imagen6" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen7', 'error')} ">
	<label for="imagen7">
		<g:message code="avaluo.imagen7.label" default="Imagen7" />
		
	</label>
	<input type="file" id="imagen7" name="imagen7" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen8', 'error')} ">
	<label for="imagen8">
		<g:message code="avaluo.imagen8.label" default="Imagen8" />
		
	</label>
	<input type="file" id="imagen8" name="imagen8" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen9', 'error')} ">
	<label for="imagen9">
		<g:message code="avaluo.imagen9.label" default="Imagen9" />
		
	</label>
	<input type="file" id="imagen9" name="imagen9" />

</div>

<div class="fieldcontain ${hasErrors(bean: avaluoInstance, field: 'imagen10', 'error')} ">
	<label for="imagen10">
		<g:message code="avaluo.imagen10.label" default="Imagen10" />
		
	</label>
	<input type="file" id="imagen10" name="imagen10" />

</div>
