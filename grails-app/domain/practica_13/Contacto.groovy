package practica_13

class Contacto {
    String nombre
    String apellido
    String email
    String telefono
    String direccion
    String puestoTrabajo
    String movil

    String modificadoPor
    Date dateCreated
    Date lastUpdated
    static belongsTo =  [categoria: Categoria]
    static hasMany = [departamentos:Departamento]
    static constraints = {
        email(email: true)
    }

    String toString() {
        return this.nombre + " " + this.apellido;
    }
}
