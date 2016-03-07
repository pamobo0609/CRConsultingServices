package cr.consultingservices.DA

class Canton {
	String nombreCanton
	
    static constraints = {
		nombreCanton(nullable:false)
    }
	
	String toString() {
		return nombreCanton
	}
}
