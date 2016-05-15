import cr.consultingservices.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_user_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: userInstance, field: 'profilePic', 'error'))
printHtmlPart(1)
invokeTag('message','g',5,['code':("user.profilePic.label"),'default':("Foto de perfil")],-1)
printHtmlPart(2)
invokeTag('textField','g',8,['name':("profilePic"),'required':(""),'value':(userInstance?.profilePic)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'username', 'error'))
printHtmlPart(4)
invokeTag('message','g',14,['code':("user.username.label"),'default':("Correo eletronico")],-1)
printHtmlPart(2)
invokeTag('textField','g',17,['style':("color:#939598"),'name':("username"),'required':(""),'value':(userInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'password', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("user.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',26,['name':("password"),'required':(""),'value':(userInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'tel', 'error'))
printHtmlPart(6)
invokeTag('message','g',32,['code':("user.tel.label"),'default':("Telefono")],-1)
printHtmlPart(2)
invokeTag('textField','g',35,['name':("tel"),'required':(""),'value':(userInstance?.tel)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'apellido1', 'error'))
printHtmlPart(7)
invokeTag('message','g',41,['code':("user.apellido1.label"),'default':("Primer apellido")],-1)
printHtmlPart(2)
invokeTag('textField','g',44,['name':("apellido1"),'required':(""),'value':(userInstance?.apellido1)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'apellido2', 'error'))
printHtmlPart(8)
invokeTag('message','g',50,['code':("user.apellido2.label"),'default':("Segundo apellido")],-1)
printHtmlPart(2)
invokeTag('textField','g',53,['name':("apellido2"),'required':(""),'value':(userInstance?.apellido2)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'nombre', 'error'))
printHtmlPart(9)
invokeTag('message','g',59,['code':("user.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(2)
invokeTag('textField','g',62,['name':("nombre"),'required':(""),'value':(userInstance?.nombre)],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460783901703L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
