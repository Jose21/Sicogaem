package com.app.login

class UserController {

    def index() { }
    
    def muestraImagen = 
    {
        def foto = Usuario.get( params.id as long)
        response.outputStream << foto?.cedulaImagen
        response.outputStream.flush()
    }
}
