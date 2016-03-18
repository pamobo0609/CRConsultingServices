package cr.consultingservices.DA

class Canton {
	String nombreCanton
	
	static belongsTo = [Provincia]
	
    static constraints = {
		nombreCanton(nullable:false)
    }
	
	String toString() {
		return nombreCanton
	}
}
