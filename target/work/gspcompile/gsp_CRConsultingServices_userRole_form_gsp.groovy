import cr.consultingservices.UserRole
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_userRole_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/userRole/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: userRoleInstance, field: 'role', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("userRole.role.label"),'default':("Role")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("role"),'name':("role.id"),'from':(cr.consultingservices.Role.list()),'optionKey':("id"),'required':(""),'value':(userRoleInstance?.role?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userRoleInstance, field: 'user', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("userRole.user.label"),'default':("User")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("user"),'name':("user.id"),'from':(cr.consultingservices.User.list()),'optionKey':("id"),'required':(""),'value':(userRoleInstance?.user?.id),'class':("many-to-one")],-1)
printHtmlPart(5)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1457400542638L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
