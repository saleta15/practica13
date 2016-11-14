package practica_13

import grails.transaction.Transactional

@Transactional
class UsuarioService {

    def autenticar( usuario, password){
        Usuario u = Usuario.findByUsername(usuario)
        u != null && u.password == password

    }

    def crear_admin(){
        if(Usuario.count() <= 0){
            Usuario admin = new Usuario()
            admin.username = "admin"
            admin.nombre = "Administrador"
            admin.modificadoPor = "Administrador"
            admin.password = "1234"
            admin.esAdmin = true
            admin.save()
            print admin.errors
            println "usuario creado"
        }
    }
}
