package com.app.login

class Usuario {

	transient springSecurityService
	//transient passwordEncoder

	String username
	String password
        String firstName
        String lastName
        String email
        byte[] foto
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username    blank: false, unique: true
		password    blank: false
                email       email:true
                foto        nullable:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
                //password = springSecurityService.encodePassword(password)
                //password = passwordEncoder.encodePassword(password, username)
	}
}
