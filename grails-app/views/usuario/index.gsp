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
                <g:if test="${flash.message}">
                    <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Aviso:</strong> ${flash.message}
                    </div>
                </g:if>
        <a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-usuario" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table  collection="${usuarioList}" />

            <div class="pagination">
                <g:paginate total="${usuarioCount ?: 0}" />
            </div>
        </div>

                </div></div></div>
    <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
    <script>
        $("table").addClass("table table-striped table-bordered");

    </script>
    </body>
</html>