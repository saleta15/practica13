package practica_13


class ContactoInterceptor {

    boolean before() {
        if(session.usuario){
            return true;
        }
        else
            redirect controller: "usuario", action: "login"
        return false

    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
