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
	//List<Imagen> imagenes
	// imagenes de un avaluo
	byte[] imagen1
	byte[] imagen2
	byte[] imagen3
	byte[] imagen4
	byte[] imagen5
	byte[] imagen6
	byte[] imagen7
	byte[] imagen8
	byte[] imagen9
	byte[] imagen10
	
	static belongsTo = [creador: Usuario]
	
	static hasMany = [comentarios:Comentario]
	
    static constraints = {
		descripcion(nullable: false)
		latitud(blank:true)
		longitud(blank:true)
		provincia(nullable:false)
		canton(nullable:false)
		otrasSenas(blank:false)
		creador(nullable:false)
		comentarios(nullable:true)
		//imagenes(nullable:true)
		// maximo 10 imagenes por avaluo
		imagen1(nullable:true)
		imagen2(nullable:true)
		imagen3(nullable:true)
		imagen4(nullable:true)
		imagen5(nullable:true)
		imagen6(nullable:true)
		imagen7(nullable:true)
		imagen8(nullable:true)
		imagen9(nullable:true)
		imagen10(nullable:true)
    }
}
