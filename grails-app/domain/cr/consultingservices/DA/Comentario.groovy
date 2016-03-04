package cr.consultingservices.DA

class Comentario {
	String comentario
	Usuario usuario
	Date fechaPosteado
	
	static belongsTo = [usuario :Usuario]
	
    static constraints = {
		comentario(nullable:false)
		usuario(nullable:false)
		fechaPosteado(nullable:false)
    }
}
