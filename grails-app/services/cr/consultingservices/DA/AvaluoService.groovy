package cr.consultingservices.DA

import java.util.List;

import cr.consultingservices.User
import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class AvaluoService {
	
	def dataSource

	/**
	 * Retorna la lista de proyectos por usuario
	 * 
	 *@param User:los proyectos se retornar por usuario 
	 **/
	ArrayList<Avaluo> getMyProjects (User u) {
		if (u == null)
			return null
			
		ArrayList<Avaluo> listA = new ArrayList<Avaluo>()
		String query = "SELECT * FROM avaluo WHERE creador_id = ${u.id};"
		def sql = new Sql(dataSource)
		def row = sql.eachRow(query){
			double latitud = it.latitud
			double longitud = it.longitud
			String descripcion = it.descripcion
			Provincia provincia = Provincia.get(it.provincia_id)
			Canton canton = Canton.get(it.canton_id)
			String otrasSenas = it.otras_senas
			
			listA.add(new Avaluo(latitud, longitud, descripcion, provincia, canton, otrasSenas))
		}
		return listA
	}
	
	/**
	 * Busca entre los avaluos existentes en bases de datos
	 * 
	 * @param String: valor estimado
	 * @param Provincia: la provincia dnde esta el avaluo
	 * @param Canton: el canton en donde esta el avaluo
	 **/
	ArrayList<Avaluo> search(String valorEstimado, Provincia p, Canton c) {
		if ((valorEstimado.trim().size == 0) && (p == null) && (c == null)) 
        	return null
		else {
			String query = "SELECT * FROM avaluo WHERE "
			if (valorEstimado.trim().size() != 0)
				query += "valor_estimado like ${valorEstimado}"// convertir a string el valor de la base de datos
			if (p != null)
				query += "and provincia_id = ${p.id}"
			if (c != null)
				query += "and canton_id = ${c.id}"
		}
	}
}
