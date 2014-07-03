package com.app.catalogos

class Pais implements Serializable{
    String nombre
    static constraints = {
        nombre blank:false
    }
}
