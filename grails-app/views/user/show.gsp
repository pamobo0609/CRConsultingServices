
<%@ page import="cr.consultingservices.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
		
		
	</head>
	<body>
	<div id="base" class="">

      <!-- Unnamed (menuBarLogged) -->

      <!-- Unnamed (Shape) -->
      <div id="u1" class="ax_shape">
        <img id="u1_img" class="img " src="images/profile/u1.png"/>
        <!-- Unnamed () -->
        <div id="u2" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- btnHomeProfile (HTML Button) -->
      <div id="u3" class="ax_html_button" data-label="btnHomeProfile">
        <input id="u3_input" type="submit" value="HOME"/>
      </div>

      <!-- btnProfileProfile (HTML Button) -->
      <div id="u4" class="ax_html_button" data-label="btnProfileProfile">
        <input id="u4_input" type="submit" value="PROFILE"/>
      </div>

      <!-- Unnamed (HTML Button) -->
      <div id="u5" class="ax_html_button">
        <input id="u5_input" type="submit" value="BROWSE PROJECTS"/>
      </div>

      <!-- Unnamed (HTML Button) -->
      <div id="u6" class="ax_html_button">
        <input id="u6_input" type="submit" value="MY PROJECTS"/>
      </div>

      <!-- btnSignOutProfile (HTML Button) -->
      <div id="u7" class="ax_html_button" data-label="btnSignOutProfile">
        <input id="u7_input" type="submit" value="SIGN OUT"/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_shape">
        <img id="u8_img" class="img " src="images/register/u7.png"/>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p><span>PROFILE PICTURE</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u10" class="ax_h1">
        <img id="u10_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p><span>Your Lastname, Name</span></p>
        </div>
      </div>

      <!-- btnReportsLogged (HTML Button) -->
      <div id="u12" class="ax_html_button" data-label="btnReportsLogged">
        <input id="u12_input" type="submit" value="REPORTS"/>
      </div>

      <!-- btnGoCalcu (HTML Button) -->
      <div id="u13" class="ax_html_button" data-label="btnGoCalcu">
        <input id="u13_input" type="submit" value="CALCULATOR"/>
      </div>

      <!-- txtLastNameProfile (Text Field) -->
      <div id="u14" class="ax_text_field" data-label="txtLastNameProfile">
        <input id="u14_input" type="text" value="Your Lastname"/>
      </div>

      <!-- txtNameProfile (Text Field) -->
      <div id="u15" class="ax_text_field" data-label="txtNameProfile">
        <input id="u15_input" type="text" value="You Name"/>
      </div>

      <!-- txtEmailProfile (Text Field) -->
      <div id="u16" class="ax_text_field" data-label="txtEmailProfile">
        <input id="u16_input" type="text" value="Your email"/>
      </div>

      <!-- txtPhoneProfile (Text Field) -->
      <div id="u17" class="ax_text_field" data-label="txtPhoneProfile">
        <input id="u17_input" type="text" value="Your phone"/>
      </div>

      <!-- Unnamed (footer) -->

      <!-- footer (Shape) -->
      <div id="u19" class="ax_shape" data-label="footer">
        <img id="u19_img" class="img " src="images/register/footer_u25.png"/>
        <!-- Unnamed () -->
        <div id="u20" class="text">
          <p><span>FOOTER</span></p>
        </div>
      </div>

      <!-- Unnamed (HTML Button) -->
      <div id="u21" class="ax_html_button">
        <input id="u21_input" type="submit" value="SAVE INFORMATION"/>
      </div>
    </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.apellido1}">
				<li class="fieldcontain">
					<span id="apellido1-label" class="property-label"><g:message code="user.apellido1.label" default="Apellido1" /></span>
					
						<span class="property-value" aria-labelledby="apellido1-label"><g:fieldValue bean="${userInstance}" field="apellido1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.apellido2}">
				<li class="fieldcontain">
					<span id="apellido2-label" class="property-label"><g:message code="user.apellido2.label" default="Apellido2" /></span>
					
						<span class="property-value" aria-labelledby="apellido2-label"><g:fieldValue bean="${userInstance}" field="apellido2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="user.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${userInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
