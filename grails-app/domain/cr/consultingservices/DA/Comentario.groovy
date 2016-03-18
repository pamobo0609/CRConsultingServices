package cr.consultingservices.DA

import cr.consultingservices.User


class Comentario {
	String comentario
	User usuario
	Date fechaPosteado
	
	static belongsTo = [usuario :User]
	
    static constraints = {
		comentario(nullable:false)
		usuario(nullable:false)
		fechaPosteado(nullable:false)
    }
	
	String toString() {
		return comentario
	}
}
