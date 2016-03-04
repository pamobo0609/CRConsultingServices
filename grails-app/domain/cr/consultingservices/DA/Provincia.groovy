package cr.consultingservices.DA

class Provincia {
	String nombreProvincia
	List<Canton> cantones
	
	static hasMany = [cantones: Canton]
	
    static constraints = {
		nombreProvincia(nullable:false)
		cantones(nullable:false)
    }
}
