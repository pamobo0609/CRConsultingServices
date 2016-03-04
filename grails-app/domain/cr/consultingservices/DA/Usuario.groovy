package cr.consultingservices.DA

class Usuario {
	String username
	String password
	String nombre
	String apellido
	String correoElectronico
	
    static constraints = {
		username(nullable:false, unique:true)
		password(nullable:false)
		nombre(nullable:false)
		apellido(nullable:false)
		correoElectronico(nullable:false, email:true)
    }
	
	/*static mapping = {
		id name: 'username'
	}*/
}
