<!DOCTYPE html>
<html>
    <head>
        <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <g:render template="../header" />
    <div class="container">
        <div class="panel panel-default" >
            <div class="panel-body" >
                    <div id="edit-departamento" class="content scaffold-edit" role="main">
                        <h1>Editar Categoria</h1>
                        <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${this.categoria}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${this.categoria}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                        </ul>
                        </g:hasErrors>
                        <g:form resource="${this.categoria}" method="PUT">
                            <g:hiddenField name="version" value="${this.categoria?.version}" />
                            <g:hiddenField name="modificadoPor" value="${session.getAttribute("usuario").nombre}"/>
                            <labe>Nombre</labe>
                            <g:textField class="form-control" name="nombre" value="${this.categoria?.nombre}"/>
                            <br>
                            <fieldset class="buttons">
                                <input class="btn btn-info" type="submit" value="Update" />
                            </fieldset>
                        </g:form>
                    </div>
            </div>
        </div>
    </div>
    </body>
</html>
