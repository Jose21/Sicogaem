
import com.app.catalogos.*
import com.app.login.Rol
import com.app.login.Usuario
import com.app.login.UsuarioRol
//import grails.util.Environment 

class BootStrap {

    def init = { servletContext ->
        /**switch(Environment.current){
            case Environment.DEVELOPMENT:**/
                
                new Usuario (
                    firstName : "Administrador",
                    lastName : "Del Sistema",
                    email : "admin@empresa.com",
                    username : "admin",
                    password : "admin",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Usuario (
                    firstName : "Diana",
                    lastName : "Villa",
                    email : "diana@empresa.com",
                    username : "contador",
                    password : "contador",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Rol (authority : "ROLE_ADMINISTRADOR").save()
                new Rol (authority : "ROLE_CONTADOR").save()


                new UsuarioRol (usuario : Usuario.findByUsername("admin"), rol : Rol.findByAuthority("ROLE_ADMINISTRADOR")).save()
                new UsuarioRol (usuario : Usuario.findByUsername("contador"), rol : Rol.findByAuthority("ROLE_CONTADOR")).save()
                
                
                /*new Estado (nombre:"Estado de México").save()
                new Pais (nombre:"México").save()*/
                
                new ConfiguracionEmpresa(nombreDeEmpresa:"NUUPTECH S.A. de C.V.",domicilio:"Calle Cerezos 943",
                                         email:"nuuptech1@gmail.com", estado:null, telefono:null
                                        ).save()
                
                println("we made it! ")
                /**break
        }**/
    }
    def destroy = {
    }
}
