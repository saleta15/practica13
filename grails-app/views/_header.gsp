<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <g:link class="navbar-brand" url="/">Practica 13</g:link>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <g:if test="${session.getAttribute("usuario")}">
                        <g:if test="${session.getAttribute("usuario").esAdmin}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administracion <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><g:link controller="usuario" action="create">Crear Usuario</g:link> </li>
                                    <li><g:link controller="usuario" action="asignar_departamento">Asignar Departamento</g:link> </li>
                                    <li><g:link controller="departamento" action="index">Administrar Departamentos</g:link> </li>
                                    <li><g:link controller="categoria" action="index">Administrar Categorias</g:link> </li>

                                </ul>
                            </li>
                        </g:if>
                    </g:if>

                    <g:if test="${session.getAttribute("usuario")}">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contactos <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><g:link controller="contacto" action="create">Crear Contacto</g:link> </li>
                                <li><g:link controller="contacto" action="index">Ver Contactos</g:link> </li>

                            </ul>
                        </li>
                    </g:if>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <g:if test="${session.getAttribute("usuario")}">
                        <li><g:link controller="usuario" action="cerrar_sesion">Cerrar Sesion</g:link></li>

                    </g:if>
                    <g:else>
                        <li><g:link controller="usuario" action="login">Iniciar Sesion</g:link></li>
                    </g:else>




                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.js"></script>
</body>
