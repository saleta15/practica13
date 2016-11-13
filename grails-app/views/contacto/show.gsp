<!DOCTYPE html>
<html>
    <head>
        <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
        <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>
<g:render template="../header" />
<div class="container" style="width: 40%">
    <div class="panel panel-default" >
        <div class="panel-body" >
            <div id="edit-departamento" class="content scaffold-edit" role="main">
                <h1>Ver Contacto</h1>
                <hr>
                <g:if test="${flash.message}">
                    <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Exito!</strong> ${flash.message}
                    </div>
                </g:if>
                <g:hasErrors bean="${this.contacto}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.contacto}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>

                    <div class="col-md-12 col-lg-12 ">
                        <table class="table table-user-information table-bordered">
                            <tbody>
                            <tr>
                                <td>Nombre:</td>
                                <td>${this.contacto.nombre}</td>
                            </tr>
                            <tr>
                                <td>Apellido:</td>
                                <td>${this.contacto.apellido}</td>
                            </tr>
                            <tr>
                                <td>Correo:</td>
                                <td>${this.contacto.email}</td>
                            </tr>
                            <tr>
                                <td>Telefono:</td>
                                <td>${this.contacto.telefono}</td>
                            </tr>
                            <tr>
                                <td>Movil:</td>
                                <td>${this.contacto.movil}</td>
                            </tr>
                            <tr>
                                <td>Direccion:</td>
                                <td>${this.contacto.direccion}</td>
                            </tr>
                            <tr>
                                <td>Puesto de Trabajo:</td>
                                <td>${this.contacto.puestoTrabajo}</td>
                            </tr>
                            <tr>
                                <td>Fecha de Creacion:</td>
                                <td>${this.contacto.dateCreated}</td>
                            </tr>
                            <tr>
                                <td>Fecha de Modificacion</td>
                                <td>${this.contacto.lastUpdated}</td>
                            </tr>
                            <tr>
                                <td>Departamentos</td>
                                <td>
                                    <ul>
                                        <g:each var="d" in="${this.contacto.departamentos}">
                                            <li>
                                                ${d}
                                            </li>
                                        </g:each>
                                    </ul>

                                </td>
                            </tr>
                            <tr>
                                <td>Modificado por:</td>
                                <td>${this.contacto.modificadoPor}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
