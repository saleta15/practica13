package practica_13


class DepartamentoInterceptor {

    boolean before() {
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
