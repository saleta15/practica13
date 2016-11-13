package practica_13

import org.springframework.beans.factory.annotation.Autowired

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {
    def usuarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Usuario.list(params), model:[usuarioCount: Usuario.count()]
    }

    def show(Usuario usuario) {
        respond usuario
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def guardar(Usuario usuario) {

        if (usuario == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        usuario.modificadoPor = session.getAttribute("usuario").nombre
        if (usuario.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond usuario.errors, view:'create'
            println usuario.errors
            return
        }

        usuario.save()

        redirect(uri:"/")
    }

    def edit(Usuario usuario) {
        respond usuario
    }

    @Transactional
    def update(Usuario usuario) {
        if (usuario == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (usuario.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond usuario.errors, view:'edit'
            return
        }

        usuario.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuario) {

        if (usuario == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        usuario.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def login(){

    }

    def autenticar(){

        String usuario = params.get("username")

        String password = params.get("password")
        if(usuarioService.autenticar(usuario,password)){
            flash.message = null
            session.setAttribute("usuario", Usuario.findByUsername(usuario))
            redirect(action: "index")
        }
        else
            redirect(action: "login")
            flash.message = "Credenciales no validas"
    }

    def asignar_departamento(){

    }

    def asignar(int departamento, int usuario){
        def departamento1 = Departamento.findById(departamento)
        def usuario1 = Usuario.findById (usuario)
        usuario1.departamento = departamento1
        usuario1.save()
        redirect (action: "asignar_departamento")

    }
}
