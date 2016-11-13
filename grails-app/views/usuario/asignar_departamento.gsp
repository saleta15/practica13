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
            <h1>Asignar Departamentos</h1>
            <hr>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Nombre</th>
                    <th>Departamento</th>
                    <th>Accion</th>
                </tr>
                </thead>
                <g:each var="user" in="${practica_13.Usuario.list()}">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.nombre}</td>
                        <td>
                            <g:if test="${user.departamento}">
                                ${user.departamento.nombre}
                            </g:if>

                        </td>
                        <td><span id="submit-devolver"  class="btn btn-primary"  data-toggle="modal" data-target="#myModal${user.id}">Asignar</span></td>
                        <div class="modal fade" id="myModal${user.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <g:form action="asignar">
                                        <div class = "panel panel-default">
                                            <div class = "panel-body">
                                                <label>Departamento:</label>
                                                <g:select class="form-control" name="departamento" from="${practica_13.Departamento.list()}" optionValue="nombre" optionKey="id"/>
                                                <g:hiddenField value="${user.id}" name="usuario" />
                                                <br>
                                                <g:actionSubmit class="btn btn-info" value="Asignar" />
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Volver</button>

                                            </div>
                                        </div>

                                    </g:form>
                                </div>
                            </div>
                        </div>
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