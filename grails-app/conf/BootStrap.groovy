import cr.consultingservices.*

class BootStrap {

    def init = { servletContext ->
		/*def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
		 
				 def user = User.findOrSaveWhere(username: 'jpmonge@gmail.com', password:'jpmonge')
		 
				 if(!user.authorities.contains(adminRole)) {
		 
					 UserRole.create(user, adminRole, true)
		 
				 }*/
    }
    def destroy = {
    }
}
