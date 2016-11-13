<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <g:link class="navbar-brand" url="/">Practica 13</g:link>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administracion <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><g:link controller="usuario" action="create">Crear Usuario</g:link> </li>
                            <li><g:link controller="usuario" action="asignar_departamento">Asignar Departamento</g:link> </li>

                        </ul>
                    </li>
                    <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contactos <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="contacto" action="create">Crear Contacto</g:link> </li>
                        <li><g:link controller="contacto" action="index">Ver Contactos</g:link> </li>

                    </ul>
                </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><g:link controller="usuario" action="login">Iniciar Sesion</g:link></li>
                        <li>  <form action="/cerrarsesion/" method="POST" class="form-signin">
                            <button style="border-radius: 30px; background-color:transparent; border: snow; margin-top: 13px;  " type="submit">Cerrar Sesi&oacute;n</button>
                        </form>
                        </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.js"></script>
</body>
