package practica_13

class Departamento {
    static hasMany = [usuarios: Usuario, contactos: Contacto]
    static belongsTo =  Contacto

    String nombre

    String modificadoPor
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }

    String toString() {
        return this.nombre;
    }
}
