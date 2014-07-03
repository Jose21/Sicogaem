package com.app.catalogos

class Estado implements Serializable{
    String nombre
    static constraints = {
        nombre blank:false
    }
}
