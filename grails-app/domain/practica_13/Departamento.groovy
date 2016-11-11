package practica_13

class Departamento {
    static hasMany = [usuarios: Usuario]

    String nombre

    String modificadoPor
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
}
