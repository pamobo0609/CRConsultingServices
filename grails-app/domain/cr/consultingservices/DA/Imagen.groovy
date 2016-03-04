package cr.consultingservices.DA

class Imagen {
	String descripcion
	byte[] imagen
	
	static belongsTo = [Avaluo]
	
    static constraints = {
		descripcion(nullable:true)
		imagen(nullable:false)
    }
}
