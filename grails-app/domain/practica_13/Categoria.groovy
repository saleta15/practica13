package practica_13

class Categoria {
    String nombre
    String modificadoPor
    Date dateCreated
    Date lastUpdated
    static hasMany = [contactos: Contacto]
    static constraints = {
    }
}
