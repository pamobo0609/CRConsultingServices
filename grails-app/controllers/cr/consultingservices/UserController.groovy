package cr.consultingservices

import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def springSecurityService

	def logout() {
		session.invalidate()
		redirect(action: "login")
	}
	
	@Secured('ROLE_ADMIN')
    def index(Integer max) {
		if (springSecurityService.currentUser?.username) 
			redirect (action: 'show', id: springSecurityService.currentUser.id)
    }

	@Secured('ROLE_ADMIN')
    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }
	
	@Secured('ROLE_ADMIN')
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
			if (userInstance.profilePic != null) {
            	respond userInstance.errors, view:'create'
				return
			}
			else {
				/** Se extrae la imagen de perfil */
				def profilePic = params.profilePic
				userInstance.profilePic = profilePic.getBytes()
			}
        }
		
		/** Se setean los datos faltantes */
		userInstance.setAccountExpired(false)
		userInstance.setAccountLocked(false)
		userInstance.setPasswordExpired(false)
		userInstance.setEnabled(false)
		/** Se setean el role que va a tener el usuario nuevo, por lo general un ROLE_USER y se salva */

		userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                //redirect userInstance
				redirect (action: 'show', id: User.findByUsername(userInstance.getUsername()).id)
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
