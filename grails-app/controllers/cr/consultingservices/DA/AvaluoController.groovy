package cr.consultingservices.DA

import static org.springframework.http.HttpStatus.*
import cr.consultingservices.User;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaluoController {
	static scaffold	= true
	// call to service
	def avaluoService
	// spring security current user
	def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		ArrayList<Avaluo> myProjects = null
		
		if ((myProjects = avaluoService.getMyProjects(springSecurityService.currentUser)) != null ) {
			if (myProjects.size() > 0)
				respond myProjects, model: [avaluoInstanceCount: myProjects.size()]//[avaluos :myProjects.drop(params.int('offset')?:0).take(params.int('max')?:10), avaluoInstanceCount: myProjects.size()]
			else
				render 'No hay proyectos todavia'
		}
		else
			respond 'error'
		
		/*
        params.max = Math.min(max ?: 10, 100)
        respond Avaluo.list(params), model:[avaluoInstanceCount: Avaluo.count()]*/
    }
	
	/** Busca entre los avaluos ya creados */
	def search() {
		ArrayList<Avaluo> results = avaluoService.search(params.valorEstimado, Provincia.findByNombreProvincia(params.nombreProvincia), Canton.findByNombreCanton(params.nombreCanton))
		if (results != null) {
			if(results.size() != 0) {
				respond results, model:[avaluoInstanceCount: results.size()]
			}
		}
	}

    def show(Avaluo avaluoInstance) {
		if(avaluoInstance.comentarios.size() == 0)
			ArrayList<Comentario> comments = avaluoService.getComments(avaluoInstance.creador.id)
			if (comments != null && comments.size() > 0)
				avaluoInstance.setComentarios(comments)
			else
				avaluoInstance.setComentarios(null)
		
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
			if(avaluoInstance.getUser() == null) {
				avaluoInstance.setCreador(User.get(springSecurityService.currentUser.id))
				avaluoInstance.setProvincia(Provincia.get(params.provincia.nombreProvincia))
			}
			
			else {
				respond avaluoInstance.errors, view:'create'
				return
			}
        }

		
		//avaluoInstance.setCreador(User.findByUsername(springSecurityService.currentUser))
        avaluoInstance.save (flush:true, failOnError:true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaluo.label', default: 'Avaluo'), avaluoInstance.id])
                redirect avaluoInstance
				//redirect (action: 'show', id: avaluoInstance.id)
				//render "Success"
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
