package com.app

class ImagenController {

    def index() { }
    
    def muestraImagen = 
    {
        def foto = Usuario.get( params.id as long)
        response.outputStream << foto?.foto
        response.outputStream.flush()
    }
}
