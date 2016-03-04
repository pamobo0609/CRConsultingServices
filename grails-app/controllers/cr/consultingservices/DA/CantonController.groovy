package cr.consultingservices.DA



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CantonController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Canton.list(params), model:[cantonInstanceCount: Canton.count()]
    }

    def show(Canton cantonInstance) {
        respond cantonInstance
    }

    def create() {
        respond new Canton(params)
    }

    @Transactional
    def save(Canton cantonInstance) {
        if (cantonInstance == null) {
            notFound()
            return
        }

        if (cantonInstance.hasErrors()) {
            respond cantonInstance.errors, view:'create'
            return
        }

        cantonInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'canton.label', default: 'Canton'), cantonInstance.id])
                redirect cantonInstance
            }
            '*' { respond cantonInstance, [status: CREATED] }
        }
    }

    def edit(Canton cantonInstance) {
        respond cantonInstance
    }

    @Transactional
    def update(Canton cantonInstance) {
        if (cantonInstance == null) {
            notFound()
            return
        }

        if (cantonInstance.hasErrors()) {
            respond cantonInstance.errors, view:'edit'
            return
        }

        cantonInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Canton.label', default: 'Canton'), cantonInstance.id])
                redirect cantonInstance
            }
            '*'{ respond cantonInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Canton cantonInstance) {

        if (cantonInstance == null) {
            notFound()
            return
        }

        cantonInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Canton.label', default: 'Canton'), cantonInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'canton.label', default: 'Canton'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
