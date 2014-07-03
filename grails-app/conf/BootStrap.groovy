
import com.app.catalogos.*
import com.app.login.Role
import com.app.login.User
import com.app.login.UserRole
//import grails.util.Environment 

class BootStrap {

    def init = { servletContext ->
        /**switch(Environment.current){
            case Environment.DEVELOPMENT:**/
                
                new User (
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

                new User (
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

                new Role (authority : "ROLE_ADMINISTRADOR").save()
                new Role (authority : "ROLE_CONTADOR").save()


                new UserRole (user : User.findByUsername("admin"), role : Role.findByAuthority("ROLE_ADMINISTRADOR")).save(failOnError: true)
                new UserRole (user : User.findByUsername("contador"), role : Role.findByAuthority("ROLE_CONTADOR")).save(failOnError: true)
                
                
                new Estado (nombre:"Estado de México").save()
                new Pais (nombre:"México").save()
                
                new ConfiguracionEmpresa(nombreDeEmpresa:"NUUPTECH S.A. de C.V.",domicilio:"Calle Los Cerezos 943",email:"nuuptech1@gmail.com").save()
                /**break
        }**/
    }
    def destroy = {
    }
}
