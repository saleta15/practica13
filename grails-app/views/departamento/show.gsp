<!DOCTYPE html>
<html>
    <head>
        <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
        <g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>
<g:render template="../header" />
<div class="container">
    <div class="panel panel-default" >
        <div class="panel-body" >
            <div id="edit-departamento" class="content scaffold-edit" role="main">
                <h1>Ver departamento</h1>
                <g:if test="${flash.message}">
                    <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Exito!</strong> ${flash.message}
                    </div>
                </g:if>
                <g:hasErrors bean="${this.departamento}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.departamento}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.departamento}" method="DELETE">
                    <div class="col-md-12 col-lg-12 ">
                        <table class="table table-user-information table-bordered">
                            <tbody>
                            <tr>
                                <td>Nombre:</td>
                                <td>${this.departamento.nombre}</td>
                            </tr>
                            <tr>
                                <td>Fecha de Creacion:</td>
                                <td>${this.departamento.dateCreated}</td>
                            </tr>
                            <tr>
                                <td>Fecha de Modificacion</td>
                                <td>${this.departamento.lastUpdated}</td>
                            </tr>
                            <tr>
                                <td>Modificado por:</td>
                                <td>${this.departamento.modificadoPor}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <g:link class="btn btn-info" action="edit" resource="${this.departamento}">Editar</g:link>
                    <input class="btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
