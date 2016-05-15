import cr.consultingservices.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_usershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'Mi perfil', default: 'Mi perfil'))],-1)
printHtmlPart(1)
createTagBody(1, {->
createTagBody(2, {->
invokeTag('message','g',7,['code':("Mi perfil"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],2)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],1)
printHtmlPart(2)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(3)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(4)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(5)
invokeTag('message','g',18,['code':("Mi perfil"),'args':([entityName])],-1)
printHtmlPart(6)
if(true && (flash.message)) {
printHtmlPart(7)
expressionOut.print(flash.message)
printHtmlPart(8)
}
printHtmlPart(9)
invokeTag('message','g',24,['code':("user.profilepic.label"),'default':("Foto de perfil")],-1)
printHtmlPart(10)
if(true && (userInstance?.profilePic)) {
printHtmlPart(11)
expressionOut.print(userInstance.profilePic)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (userInstance?.username)) {
printHtmlPart(14)
invokeTag('message','g',32,['code':("user.username.label"),'default':("Username")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',34,['bean':(userInstance),'field':("username")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.apellido1)) {
printHtmlPart(18)
invokeTag('message','g',42,['code':("user.apellido1.label"),'default':("Primer apellido")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',44,['bean':(userInstance),'field':("apellido1")],-1)
printHtmlPart(16)
}
printHtmlPart(20)
if(true && (userInstance?.apellido2)) {
printHtmlPart(21)
invokeTag('message','g',51,['code':("user.apellido2.label"),'default':("Segundo apellido")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',53,['bean':(userInstance),'field':("apellido2")],-1)
printHtmlPart(16)
}
printHtmlPart(20)
if(true && (userInstance?.nombre)) {
printHtmlPart(23)
invokeTag('message','g',60,['code':("user.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',62,['bean':(userInstance),'field':("nombre")],-1)
printHtmlPart(16)
}
printHtmlPart(25)
if(true && (userInstance?.tel)) {
printHtmlPart(23)
invokeTag('message','g',69,['code':("user.tel.label"),'default':("Telefono")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',71,['bean':(userInstance),'field':("tel")],-1)
printHtmlPart(16)
}
printHtmlPart(27)
createTagBody(1, {->
printHtmlPart(28)
createTagBody(2, {->
invokeTag('message','g',79,['code':("Editar perfil"),'default':("Editar perfil")],-1)
})
invokeTag('link','g',79,['class':("edit"),'action':("edit"),'resource':(userInstance)],2)
printHtmlPart(29)
invokeTag('actionSubmit','g',80,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Borrar')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(30)
})
invokeTag('form','g',82,['url':([resource:userInstance, action:'delete']),'method':("DELETE")],1)
printHtmlPart(31)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460783598198L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
