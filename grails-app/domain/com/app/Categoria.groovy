package com.app

class Categoria implements Serializable{
    String nombreDeCategoria
    
    //static hasMany = [tiposDeOperaciones:TipoDeOperacion] // La categoría tiene muchos tipos de operaciones
    
    static constraints = {
        nombreDeCategoria nullable:true, inList:["Entrada","Salida"]
    }
    
    String toString(){
        "${nombreDeCategoria}"
    }
}
