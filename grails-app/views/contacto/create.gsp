<%@ page import="practica_13.Categoria" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<g:render template="../header"/>
<div style="width: 50%" class="container" id="contenedorCrearUsuario">

    <div class = "panel panel-default">
        <div class = "panel-body">
            <h1>Nuevo Contacto</h1>
            <hr>
            <g:if test="${flash.message}">
                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Error.</strong> ${flash.message}
                </div>
            </g:if>
            <g:eachError bean="${this.contacto}" var="error">
                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Error</strong> <g:message error="${error}"/>
                </div>
            </g:eachError>

            <g:form controller="contacto" action="save">
                <label>Categoria de Contacto: </label>
                <g:select class="form-control" from="${Categoria.list()}" name="categoria" optionKey="id" optionValue="nombre"/><br>
                <label>Nombre: </label>
                <g:hiddenField name="modificadoPor" value="${session.getAttribute("usuario").nombre}"/>
                <g:hiddenField name="usuario" value="${session.getAttribute("usuario").id}"/>
                <g:textField name="nombre" value="${contacto.nombre}" class="form-control"/><br/>
                <label>Apellido: </label>
                <g:textField name="apellido" value="${contacto.apellido}" class="form-control"/><br/>
                <label>Correo: </label>
                <g:textField name="email" value="${contacto.email}" type="email" class="form-control"/><br/>
                <label>Telefono: </label>
                <g:textField name="telefono" value="${contacto.telefono}"  class="form-control"/><br/>
                <label>Direccion: </label>
                <g:textField name="direccion" value="${contacto.direccion}" class="form-control"/><br/>
                <label>Puesto de Trabajo: </label>
                <g:textField name="puestoTrabajo" value="${contacto.puestoTrabajo}" class="form-control"/><br/>
                <label>Movil: </label>
                <g:textField name="movil" value="${contacto.movil}" class="form-control"/><br/>
                <g:actionSubmit value="Guardar" class="btn btn-info"/>


            </g:form>
            <br>
        </div>
    </div>

</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>