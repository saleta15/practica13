<!DOCTYPE html>
<html>
    <head>
        <g:set var="entityName" value="${message(code: 'departamento.label', default: 'Categoria')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <g:render template="../header" />
    <div class="container">
        <div class="panel panel-default" >

            <div class="panel-body" >

        <div id="create-departamento" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <hr>
            <g:if test="${flash.message}">
                <div class="alert alert-success">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Exito!</strong> ${flash.message}
                </div>
            </g:if>
            <g:hasErrors bean="${this.categoria}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.categoria}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <label>Nombre:</label>
                <g:hiddenField name="modificadoPor" value="${session.getAttribute("usuario").nombre}"/>
                <g:textField class="form-control" name="nombre" />
                <br>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div></div></div></div>
    </body>
</html>
