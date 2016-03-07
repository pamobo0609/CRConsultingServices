package cr.consultingservices.DA

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaluoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Avaluo.list(params), model:[avaluoInstanceCount: Avaluo.count()]
    }

    def show(Avaluo avaluoInstance) {
        respond avaluoInstance
    }

    def create() {
        respond new Avaluo(params)
    }

    @Transactional
    def save(Avaluo avaluoInstance) {
        if (avaluoInstance == null) {
            notFound()
            return
        }

        if (avaluoInstance.hasErrors()) {
            respond avaluoInstance.errors, view:'create'
            return
        }

        avaluoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaluo.label', default: 'Avaluo'), avaluoInstance.id])
                redirect avaluoInstance
            }
            '*' { respond avaluoInstance, [status: CREATED] }
        }
    }

    def edit(Avaluo avaluoInstance) {
        respond avaluoInstance
    }

    @Transactional
    def update(Avaluo avaluoInstance) {
        if (avaluoInstance == null) {
            notFound()
            return
        }

        if (avaluoInstance.hasErrors()) {
            respond avaluoInstance.errors, view:'edit'
            return
        }

        avaluoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Avaluo.label', default: 'Avaluo'), avaluoInstance.id])
                redirect avaluoInstance
            }
            '*'{ respond avaluoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Avaluo avaluoInstance) {

        if (avaluoInstance == null) {
            notFound()
            return
        }

        avaluoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Avaluo.label', default: 'Avaluo'), avaluoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaluo.label', default: 'Avaluo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
