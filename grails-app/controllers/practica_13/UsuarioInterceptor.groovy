package practica_13


class UsuarioInterceptor {

    boolean before() {
        if(actionName == "login" || actionName == "autenticar" || actionName == "cerrar_sesion")
            return true
        if(session.usuario && session.usuario.esAdmin){
            return true;
        }
        if(session.usuario)
            redirect url:"/"
        else
            redirect controller: "usuario", action: "login"
        return false

    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
