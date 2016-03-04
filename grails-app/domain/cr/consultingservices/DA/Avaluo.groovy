package cr.consultingservices.DA

class Avaluo {
	Double latitud
	Double longitud
	String descripcion
	Provincia provincia
	Canton canton
	String otrasSenas
	Double valorEstimado
	Usuario creador
	List<Comentario> comentarios
	List<Imagen> imagenes
	
	static belongsTo = [creador: Usuario]
	
	static hasMany = [comentarios:Comentario, imagenes: Imagen]
	
    static constraints = {
		descripcion(nullable: false)
		latitud(blank:true)
		longitud(blank:true)
		provincia(nullable:false)
		canton(nullable:false)
		otrasSenas(blank:false)
		creador(nullable:false)
		comentarios(nullable:true)
		imagenes(nullable:true)
    }
}
