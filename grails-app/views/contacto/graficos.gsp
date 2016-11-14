<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->


    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<g:render template="../header" />
<div style="width: 50%" class="container" id="contenedorCrearUsuario">

    <div class = "panel panel-default">
        <div class = "panel-body">
            <h1>Graficos</h1>
            <hr>

            <h3>Contactos por departamentos:</h3>
            <div id="flot-placeholder2" style="width:450px;height:300px;margin:0 auto"></div>
            <hr>
            <h3>Contactos por categoria:</h3>
            <div id="flot-placeholder3" style="width:450px;height:300px;margin:0 auto"></div>
        </div></div></div>

<asset:javascript src="jquery.flot.min.js"/>
<asset:javascript src="jquery.flot.pie.min.js"/>
<asset:javascript src="graficos.js"/>
</body>

</html>