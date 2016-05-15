import cr.consultingservices.DA.Avaluo
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_avaluosearch_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/avaluo/search.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'avaluo.label', default: 'Avaluo'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
createTagBody(3, {->
printHtmlPart(10)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(11)
expressionOut.print(error.field)
printHtmlPart(12)
}
printHtmlPart(13)
invokeTag('message','g',22,['error':(error)],-1)
printHtmlPart(14)
})
invokeTag('eachError','g',23,['bean':(avaluoInstance),'var':("error")],3)
printHtmlPart(15)
})
invokeTag('hasErrors','g',25,['bean':(avaluoInstance)],2)
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(16)
expressionOut.print(hasErrors(bean: avaluoInstance, field: 'avaluo', 'error'))
printHtmlPart(17)
expressionOut.print(hasErrors(bean: avaluoInstance, field: 'provincia', 'error'))
printHtmlPart(18)
invokeTag('message','g',31,['code':("avaluo.provincia.label"),'default':("Provincia")],-1)
printHtmlPart(19)
invokeTag('select','g',34,['id':("provincia"),'name':("provincia.nombreProvincia"),'from':(cr.consultingservices.DA.Provincia.list()),'optionKey':("id"),'required':(""),'value':(avaluoInstance?.provincia?.nombreProvincia),'class':("many-to-one")],-1)
printHtmlPart(20)
expressionOut.print(hasErrors(bean: avaluoInstance, field: 'canton', 'error'))
printHtmlPart(21)
invokeTag('message','g',40,['code':("avaluo.canton.label"),'default':("Canton")],-1)
printHtmlPart(22)
invokeTag('select','g',42,['id':("provincia"),'name':("canton.nombreCanton"),'from':(cr.consultingservices.DA.Canton.list()),'optionKey':("id"),'value':(avaluoInstance?.canton?.nombreCanton),'class':("many-to-one")],-1)
printHtmlPart(23)
expressionOut.print(hasErrors(bean: avaluoInstance, field: 'valorEstimado', 'error'))
printHtmlPart(24)
invokeTag('message','g',48,['code':("avaluo.valorEstimado.label"),'default':("Valor estimado:")],-1)
printHtmlPart(19)
invokeTag('field','g',51,['name':("valorEstimado"),'value':(fieldValue(bean: avaluoInstance, field: 'valorEstimado')),'type':("text")],-1)
printHtmlPart(25)
invokeTag('actionSubmit','g',58,['action':("search"),'name':("search"),'class':("search"),'value':(message(code: 'default.search.label', default: 'Buscar'))],-1)
printHtmlPart(26)
})
invokeTag('form','g',60,['name':("avaluoForm"),'method':("post")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',62,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460783598188L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
