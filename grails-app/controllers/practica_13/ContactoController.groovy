package practica_13

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContactoController {
    def contactoService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
      def usuario = Usuario.findById(session.getAttribute("usuario").id)
      render(view: "index",model: [contactos: usuario.departamento.contactos])

    }

    def show(Contacto contacto) {
        respond contacto
    }

    def create() {
        respond new Contacto(params)
    }

    @Transactional
    def guardar(int usuario,int categoria, Contacto contacto) {

        if (contacto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond contacto, view:'create'
            return
        }
        def status = contactoService.crearContacto(contacto,usuario,categoria)
        if (status){
            redirect action: "index"
            if(status == -1)
                flash.message = "El contacto introducido ya existia, pero fue agregado a tu departamento."
        }

        else{
            respond contacto, view:'create'
            flash.message = "Este contacto ya fue registrado en su departamento."
        }


    }

    def edit(Contacto contacto) {
        respond contacto
    }

    @Transactional
    def update(Contacto contacto) {
        if (contacto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (contacto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond contacto.errors, view:'edit'
            return
        }

        contacto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'contacto.label', default: 'Contacto'), contacto.id])
                redirect contacto
            }
            '*'{ respond contacto, [status: OK] }
        }
    }

    @Transactional
    def delete(Contacto contacto) {

        if (contacto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        contacto.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'contacto.label', default: 'Contacto'), contacto.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contacto.label', default: 'Contacto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
