<%@ page import="cr.consultingservices.User" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profilePic', 'error')} required">
	<label for="profilePic">
		<g:message code="user.profilePic.label" default="Foto de perfil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="profilePic" required="" value="${userInstance?.profilePic}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Correo eletronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField style="color:#939598" name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tel', 'error')} required">
	<label for="tel">
		<g:message code="user.tel.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tel" required="" value="${userInstance?.tel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'apellido1', 'error')} required">
	<label for="apellido1">
		<g:message code="user.apellido1.label" default="Primer apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido1" required="" value="${userInstance?.apellido1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'apellido2', 'error')} required">
	<label for="apellido2">
		<g:message code="user.apellido2.label" default="Segundo apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido2" required="" value="${userInstance?.apellido2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userInstance?.nombre}"/>

</div>