package practica_13

class BootStrap {
    def usuarioService
    def init = { servletContext ->
        usuarioService.crear_admin()
    }
    def destroy = {
    }
}
