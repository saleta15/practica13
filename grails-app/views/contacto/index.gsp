<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<g:render template="../header"/>
<div class="container" id="contenedorCrearUsuario">

    <div class = "panel panel-default">
        <div class = "panel-body">
            <h1>Contactos</h1>
            <hr>
            <g:if test="${flash.message}">
                <div class="alert alert-success">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Aviso:</strong> ${flash.message}
                </div>
            </g:if>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Movil</th>
                </tr>
                </thead>
                <g:each var="contacto" in="${contactos}">
                    <tr>
                        <td><g:link params="[contacto: contacto.id]">${contacto.nombre} ${contacto.apellido}</g:link></td>
                        <td>${contacto.email}</td>
                        <td>
                            ${contacto.telefono}

                        </td>
                        <td>${contacto.movil}</td>

                    </tr>
                </g:each>

                </tbody>
            </table>
            <br>
        </div>
    </div>

</div>
</body>
</html>