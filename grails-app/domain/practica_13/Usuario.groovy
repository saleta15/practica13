package practica_13

class Usuario {

    String username
    String password
    String nombre
    Boolean esAdmin = false
    String modificadoPor
    Date dateCreated
    Date lastUpdated
    static belongsTo = [departamento: Departamento]

    static constraints = {
        username(unique: true)
        departamento nullable: true
    }

    String toString() {
        return this.nombre;
    }
}
