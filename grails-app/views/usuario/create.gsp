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
            <h1>Nuevo Usuario</h1>
            <hr>

                <g:eachError bean="${this.usuario}" var="error">
                    <div class="alert alert-danger">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Error</strong> <g:message error="${error}"/>
                    </div>
                </g:eachError>

            <g:form controller="usuario" action="save">
                <label>Nombre: </label>
                <g:hiddenField name="modificadoPor" value="${session.getAttribute("usuario").nombre}"/>
                <g:textField name="nombre" class="form-control"/><br/>
                <label>Usuario: </label>
                <g:textField name="username" class="form-control"/><br/>
                <label>Password </label>
                <g:textField name="password" class="form-control"/><br/>
                <g:actionSubmit value="Guardar" class="btn btn-info"/>
            </g:form>
            <br>
        </div>
    </div>

</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>