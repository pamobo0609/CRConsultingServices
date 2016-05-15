import cr.consultingservices.DA.Avaluo
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_CRConsultingServices_avaluoshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/avaluo/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',8,['var':("entityName"),'value':(message(code: 'avaluo.label', default: 'Avaluo'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',9,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',9,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',9,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("initial-scale=1.0")],-1)
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(5)
})
invokeTag('captureHead','sitemesh',21,[:],1)
printHtmlPart(6)
createTagBody(1, {->
printHtmlPart(7)
invokeTag('message','g',23,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(8)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(9)
invokeTag('message','g',26,['code':("Home")],-1)
printHtmlPart(10)
createTagBody(2, {->
invokeTag('message','g',27,['code':("Mis avaluos"),'args':([entityName])],-1)
})
invokeTag('link','g',27,['class':("list"),'action':("index")],2)
printHtmlPart(11)
createTagBody(2, {->
invokeTag('message','g',28,['code':("Crear avaluo"),'args':([entityName])],-1)
})
invokeTag('link','g',28,['class':("create"),'action':("create")],2)
printHtmlPart(12)
invokeTag('message','g',32,['code':("Mi avaluo"),'args':([entityName])],-1)
printHtmlPart(13)
if(true && (flash.message)) {
printHtmlPart(14)
expressionOut.print(flash.message)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (avaluoInstance?.descripcion)) {
printHtmlPart(17)
invokeTag('message','g',40,['code':("avaluo.descripcion.label"),'default':("Descripcion")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',42,['bean':(avaluoInstance),'field':("descripcion")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.latitud)) {
printHtmlPart(21)
invokeTag('message','g',49,['code':("avaluo.latitud.label"),'default':("Latitud")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',51,['bean':(avaluoInstance),'field':("latitud")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.longitud)) {
printHtmlPart(23)
invokeTag('message','g',58,['code':("avaluo.longitud.label"),'default':("Longitud")],-1)
printHtmlPart(24)
invokeTag('fieldValue','g',60,['bean':(avaluoInstance),'field':("longitud")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.provincia)) {
printHtmlPart(25)
invokeTag('message','g',67,['code':("avaluo.provincia.label"),'default':("Provincia")],-1)
printHtmlPart(26)
expressionOut.print(avaluoInstance?.provincia?.encodeAsHTML())
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.canton)) {
printHtmlPart(27)
invokeTag('message','g',76,['code':("avaluo.canton.label"),'default':("Canton")],-1)
printHtmlPart(28)
expressionOut.print(avaluoInstance?.canton?.encodeAsHTML())
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.otrasSenas)) {
printHtmlPart(29)
invokeTag('message','g',85,['code':("avaluo.otrasSenas.label"),'default':("Otras Senas")],-1)
printHtmlPart(30)
invokeTag('fieldValue','g',87,['bean':(avaluoInstance),'field':("otrasSenas")],-1)
printHtmlPart(19)
}
printHtmlPart(31)
invokeTag('message','g',108,['code':("mapa"),'default':("Mapa")],-1)
printHtmlPart(32)
if(true && (avaluoInstance?.creador)) {
printHtmlPart(33)
invokeTag('message','g',116,['code':("avaluo.creador.label"),'default':("Creador")],-1)
printHtmlPart(34)
createTagBody(3, {->
expressionOut.print(avaluoInstance?.creador?.encodeAsHTML())
})
invokeTag('link','g',118,['controller':("usuario"),'style':("color:black;"),'action':("show"),'id':(avaluoInstance?.creador?.id)],3)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.comentarios)) {
printHtmlPart(35)
invokeTag('message','g',125,['code':("avaluo.comentarios.label"),'default':("Comentarios")],-1)
printHtmlPart(36)
for( c in (avaluoInstance.comentarios) ) {
printHtmlPart(37)
createTagBody(4, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',128,['controller':("comentario"),'action':("show"),'id':(c.id)],4)
printHtmlPart(38)
}
printHtmlPart(39)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen1)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("Imagen 1"),'default':("Imagen 1")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen2)) {
printHtmlPart(41)
invokeTag('message','g',143,['code':("Imagen 2"),'default':("Imagen 2")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen3)) {
printHtmlPart(42)
invokeTag('message','g',150,['code':("Imagen 3"),'default':("Imagen 3")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen4)) {
printHtmlPart(43)
invokeTag('message','g',157,['code':("Imagen 4"),'default':("Imagen 4")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen5)) {
printHtmlPart(44)
invokeTag('message','g',164,['code':("Imagen 5"),'default':("Imagen 5")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen6)) {
printHtmlPart(45)
invokeTag('message','g',171,['code':("Imagen 6"),'default':("Imagen 6")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen7)) {
printHtmlPart(46)
invokeTag('message','g',178,['code':("Imagen 7"),'default':("Imagen 7")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen8)) {
printHtmlPart(47)
invokeTag('message','g',185,['code':("Imagen 8"),'default':("Imagen 8")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen9)) {
printHtmlPart(48)
invokeTag('message','g',192,['code':("Imagen 9"),'default':("Imagen 9")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.imagen10)) {
printHtmlPart(49)
invokeTag('message','g',199,['code':("Imagen 10"),'default':("Imagen 10")],-1)
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (avaluoInstance?.valorEstimado)) {
printHtmlPart(50)
invokeTag('message','g',206,['code':("avaluo.valorEstimado.label"),'default':("Valor Estimado")],-1)
printHtmlPart(51)
invokeTag('fieldValue','g',208,['bean':(avaluoInstance),'field':("valorEstimado")],-1)
printHtmlPart(19)
}
printHtmlPart(52)
createTagBody(2, {->
printHtmlPart(53)
createTagBody(3, {->
invokeTag('message','g',216,['code':("Editar"),'default':("Edit")],-1)
})
invokeTag('link','g',216,['class':("edit"),'action':("edit"),'resource':(avaluoInstance)],3)
printHtmlPart(54)
invokeTag('actionSubmit','g',217,['class':("delete"),'action':("delete"),'value':("Borrar avaluo"),'onclick':("return confirm('${message(code: 'Esta seguro?', default: 'Esta seguro?')}');")],-1)
printHtmlPart(55)
})
invokeTag('form','g',219,['url':([resource:avaluoInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(56)
})
invokeTag('captureBody','sitemesh',221,['onload':("initMap()")],1)
printHtmlPart(57)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460925979147L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
