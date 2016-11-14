package practica_13

import grails.transaction.Transactional

@Transactional
class ContactoService {

    def crearContacto(Contacto contacto, usuario, categoria){
        def user = Usuario.findById(usuario)
        contacto.modificadoPor = user.nombre
        contacto.categoria = Categoria.findById(categoria)
        def contacto_viejo = Contacto.findByEmailOrMovil(contacto.email, contacto.movil)
        if(contacto_viejo){
            if(user.departamento.contactos.contains(contacto_viejo)){
                return 0
            }

            user.departamento.contactos.add(contacto_viejo)
            contacto_viejo.departamentos.add(user.departamento)
            contacto_viejo.save()
            user.departamento.save()
            return -1
        }

        if(!contacto.departamentos)
            contacto.departamentos = new ArrayList<>()
        contacto.departamentos.add(user.departamento)
        user.departamento.contactos.add(contacto)
        user.departamento.save()
        contacto.save flush:true
        return 1
    }


}
