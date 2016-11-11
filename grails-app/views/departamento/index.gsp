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
            <h1>Departamentos</h1>
            <g:link class="btn btn-success" action="create">Crear</g:link>
            <div id="list-usuario" class="content scaffold-list" role="main">

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table  collection="${departamentoList}" />

                <div class="pagination">
                    <g:paginate total="${usuarioCount ?: 0}" />
                </div>
            </div>

        </div></div></div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script>
    $("table").addClass("table table-striped");

</script>
</body>
</html>