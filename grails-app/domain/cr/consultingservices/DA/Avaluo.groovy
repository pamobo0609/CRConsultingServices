package cr.consultingservices.DA

import cr.consultingservices.User


class Avaluo {
	Float latitud
	Float longitud
	String descripcion
	Provincia provincia
	Canton canton
	String otrasSenas
	Double valorEstimado
	User creador
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
	
	static searchFields = {
		provincia
		canton
		latitud
		longitud
		valorEstimado
	}
	
	static belongsTo = [creador: User]
	
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
	
	Avaluo(long id, double latitud, double longitud, String descripcion, Provincia provincia, Canton canton, String otrasSenas) {
		this.id = id
		this.latitud = latitud
		this.longitud = longitud
		this.descripcion = descripcion
		this.provincia = provincia
		this.canton = canton
		this.otrasSenas = otrasSenas
	}
	
	public User getUser() {
		return creador;
	}

	public Float getLatitud() {
		return latitud;
	}

	public void setLatitud(Float latitud) {
		this.latitud = latitud;
	}

	public Float getLongitud() {
		return longitud;
	}

	public void setLongitud(Float longitud) {
		this.longitud = longitud;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	public Canton getCanton() {
		return canton;
	}

	public void setCanton(Canton canton) {
		this.canton = canton;
	}

	public String getOtrasSenas() {
		return otrasSenas;
	}

	public void setOtrasSenas(String otrasSenas) {
		this.otrasSenas = otrasSenas;
	}

	public Double getValorEstimado() {
		return valorEstimado;
	}

	public void setValorEstimado(Double valorEstimado) {
		this.valorEstimado = valorEstimado;
	}

	public User getCreador() {
		return creador;
	}

	public void setCreador(User creador) {
		this.creador = creador;
	}

	public List<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public byte[] getImagen1() {
		return imagen1;
	}

	public void setImagen1(byte[] imagen1) {
		this.imagen1 = imagen1;
	}

	public byte[] getImagen2() {
		return imagen2;
	}

	public void setImagen2(byte[] imagen2) {
		this.imagen2 = imagen2;
	}

	public byte[] getImagen3() {
		return imagen3;
	}

	public void setImagen3(byte[] imagen3) {
		this.imagen3 = imagen3;
	}

	public byte[] getImagen4() {
		return imagen4;
	}

	public void setImagen4(byte[] imagen4) {
		this.imagen4 = imagen4;
	}

	public byte[] getImagen5() {
		return imagen5;
	}

	public void setImagen5(byte[] imagen5) {
		this.imagen5 = imagen5;
	}

	public byte[] getImagen6() {
		return imagen6;
	}

	public void setImagen6(byte[] imagen6) {
		this.imagen6 = imagen6;
	}

	public byte[] getImagen7() {
		return imagen7;
	}

	public void setImagen7(byte[] imagen7) {
		this.imagen7 = imagen7;
	}

	public byte[] getImagen8() {
		return imagen8;
	}

	public void setImagen8(byte[] imagen8) {
		this.imagen8 = imagen8;
	}

	public byte[] getImagen9() {
		return imagen9;
	}

	public void setImagen9(byte[] imagen9) {
		this.imagen9 = imagen9;
	}

	public byte[] getImagen10() {
		return imagen10;
	}

	public void setImagen10(byte[] imagen10) {
		this.imagen10 = imagen10;
	}

	public static java.lang.Object getSearchFields() {
		return searchFields;
	}

	public static void setSearchFields(java.lang.Object searchFields) {
		Avaluo.searchFields = searchFields;
	}

	public static java.lang.Object getBelongsTo() {
		return belongsTo;
	}

	public static void setBelongsTo(java.lang.Object belongsTo) {
		Avaluo.belongsTo = belongsTo;
	}

	public static java.lang.Object getHasMany() {
		return hasMany;
	}

	public static void setHasMany(java.lang.Object hasMany) {
		Avaluo.hasMany = hasMany;
	}

	public static java.lang.Object getConstraints() {
		return constraints;
	}

	public static void setConstraints(java.lang.Object constraints) {
		Avaluo.constraints = constraints;
	}
	
	
	
}
