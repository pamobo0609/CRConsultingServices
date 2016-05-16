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
		String query = "SELECT * FROM crconsultingservices.avaluo WHERE creador_id = ${u.id};"
		println query
		def sql = new Sql(dataSource)
		def row = sql.eachRow(query) {
			long id = it.id
			double latitud = it.latitud
			double longitud = it.longitud
			String descripcion = it.descripcion
			Provincia provincia = Provincia.get(it.provincia_id)
			Canton canton = Canton.get(it.canton_id)
			String otrasSenas = it.otras_senas
			String observaciones = it.observaciones
			
			listA.add(new Avaluo(id, latitud, longitud, descripcion, provincia, canton, otrasSenas, observaciones))
		}
		return listA
	}
	
	/**
	 * Busca entre los avaluos existentes en bases de datos
	 * 
	 * @param String: valor estimado
	 * @param Provincia: la provincia donde esta el avaluo
	 * @param Canton: el canton en donde esta el avaluo
	 * @return
	 **/
	ArrayList<Avaluo> search(String valorEstimado, Provincia p, Canton c) {
		if ((valorEstimado.trim().size == 0) && (p == null) && (c == null)) 
        	return null
		else {
			ArrayList<Avaluo> results = new ArrayList<Avaluo>()
			String query = "SELECT * FROM crconsultingservices.avaluo WHERE "
			if (p != null)
				query += "provincia_id = ${p.id} "
			if (valorEstimado.trim().size() != 0)
				query += "and cast(valor_estimado as char(20)) like ${valorEstimado} "// convertir a string el valor de la base de datos
			if (c != null)
				query += "and canton_id = ${c.id}"
				
			def sql = new Sql(dataSource)
			def row = sql.eachRow(query) {
				results.add(Avaluo.get(it.id))
			}
			return results
		}
	}
	
	/**
	 * Retorna los comentarios de un avaluo X
	 * 
	 * @param avaluoId el avaluo por buscar
	 * @return
	 **/
	ArrayList<Comentario> getComments(long avaluoId) {
		if (avaluoId == 0) return null
		else {
			ArrayList<Comentario> comments = new ArrayList<Comentario>()
			def select = """select comentario_id
							from crconsultingservices.avaluo_comentario, crconsultingservices.comentario
							where crconsultingservices.avaluo_comentario.avaluo_comentarios_id = ${avaluoId} 
									and crconsultingservices.avaluo_comentario.comentario_id = crconsultingservices.comentario.id """
			def sql = new Sql(dataSource)
			sql.eachRow(select) {
				comments.add(Comentario?.get(it.comentario_id))
			}
			return comments
		}
		
	}
}