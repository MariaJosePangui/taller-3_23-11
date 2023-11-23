<%--
  Created by IntelliJ IDEA.
  User: cotep
  Date: 23-11-2023
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="AdminA.css">
    <title>Registro artista</title>
</head>
<body>
<h1 class="encabezado"> Registro artista</h1>
<form action="AdministracionArtistas.jsp" method="post">
    <div class="centrado">
        <label> Nombre artistico:</label>
        <input name="nombre artistico" type="text" class="campoTexto">
        <label> Genero musical:</label>
        <input name="Genero musical" type="text" class="campoTexto">
        <br><br>
        <input type="submit" value="Registrar artista" class="boton">
    </div>
</form>
</body>
</html>