package practica_13

class Contacto {
    String nombre
    String apellido
    String email
    String telefono
    String direccion
    String puestoTrabajo
    String movil
    static belongsTo = Departamento
    static hasMany = [departamentos:Departamento]
    static constraints = {
    }
}
