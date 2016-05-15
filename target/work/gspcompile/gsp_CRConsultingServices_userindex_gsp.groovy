import cr.consultingservices.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_userindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',12,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',15,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',20,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('sortableColumn','g',28,['property':("username"),'title':(message(code: 'user.username.label', default: 'Username'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',30,['property':("password"),'title':(message(code: 'user.password.label', default: 'Password'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',32,['property':("accountExpired"),'title':(message(code: 'user.accountExpired.label', default: 'Account Expired'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',34,['property':("accountLocked"),'title':(message(code: 'user.accountLocked.label', default: 'Account Locked'))],-1)
printHtmlPart(15)
invokeTag('sortableColumn','g',36,['property':("apellido1"),'title':(message(code: 'user.apellido1.label', default: 'Primer apellido'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',38,['property':("apellido2"),'title':(message(code: 'user.apellido2.label', default: 'Apellido2'))],-1)
printHtmlPart(16)
loop:{
int i = 0
for( userInstance in (userInstanceList) ) {
printHtmlPart(17)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(18)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: userInstance, field: "username"))
})
invokeTag('link','g',46,['action':("show"),'id':(userInstance.id)],3)
printHtmlPart(19)
expressionOut.print(fieldValue(bean: userInstance, field: "password"))
printHtmlPart(20)
invokeTag('formatBoolean','g',50,['boolean':(userInstance.accountExpired)],-1)
printHtmlPart(20)
invokeTag('formatBoolean','g',52,['boolean':(userInstance.accountLocked)],-1)
printHtmlPart(21)
expressionOut.print(fieldValue(bean: userInstance, field: "apellido1"))
printHtmlPart(20)
expressionOut.print(fieldValue(bean: userInstance, field: "apellido2"))
printHtmlPart(22)
i++
}
}
printHtmlPart(23)
invokeTag('paginate','g',63,['total':(userInstanceCount ?: 0)],-1)
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',66,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460783598197L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
