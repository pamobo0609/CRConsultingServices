package crconsultingservices

import java.sql.SQLException;

import cr.consultingservices.Role
import cr.consultingservices.User
import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class UserRoleService {
	def dataSource
	
	boolean createUserRole(User userInstance) {
		Role r = Role.findByAuthority('ROLE_USER')
		String insert = """INSERT INTO crconsultingservices.user_role(user_id, role_id)
							values(${userInstance.id}, ${r.id});"""
		def sql = new Sql(dataSource)
		try {
			sql.execute(insert)
		} catch(SQLException ex) {
			println ex
			return false
		}
		return true
	}
}