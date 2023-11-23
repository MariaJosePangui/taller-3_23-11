<%--
  Created by IntelliJ IDEA.
  User: esteb
  Date: 23-11-2023
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Información de Usuario</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background: url(data:image/jpeg;base64,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);
        ) no-repeat center center fixed; /* Reemplaza 'URL_DE_LA_IMAGEN' con la URL de tu imagen */
            background-size: cover;
        }
        .form-container {
            width: 70%;
            margin: auto;
            padding: 20px;
            border: 1px solid #85c7b6;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.8);
        }
        .form-container h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
            padding: 8px;
            border-radius: 5px;
            display: flex;
            align-items: center;
        }
        .form-group label {
            font-weight: bold;
            margin-right: 10px;
            flex: 1;
        }
        .form-group .data-container {
            flex: 2;
            padding: 8px;
            border: 1px solid #c76b6b;
            border-radius: 5px;
            background-color: #ffffff;
        }
        .form-group img {
            display: block;
            margin: 0 auto;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
        }
        .form-group button {
            width: 50%;
            padding: 6px;
            border: none;
            border-radius: 3px;
            background-color: #c40606;
            color: white;
            cursor: pointer;
            margin: 0 auto;
            display: block;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Información de Eventos</h2>
    <form>
        <div class="form-group">
            <img src="URL_IMAGEN_1" alt="Imagen de Evento">
        </div>
        <div class="form-group">
            <label for="nombre">Nombre del Evento:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="banda">Nombre de la Banda:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="horario">Horario:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="duracion">Duración:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <button type="button" onclick="window.history.back()" style="border: none;">Cancelar</button>
        </div>
    </form>
    <form>
        <div class="form-group">
            <img src="URL_IMAGEN_1" alt="Imagen de Evento">
        </div>
        <div class="form-group">
            <label for="nombre">Nombre del Evento:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="banda">Nombre de la Banda:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="horario">Horario:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="duracion">Duración:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <button type="button" onclick="window.history.back()" style="border: none;">Cancelar</button>
        </div>
    </form>
    <form>
        <div class="form-group">
            <img src="URL_IMAGEN_1" alt="Imagen de Evento">
        </div>
        <div class="form-group">
            <label for="nombre">Nombre del Evento:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="banda">Nombre de la Banda:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="horario">Horario:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="duracion">Duración:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <button type="button" onclick="window.history.back()" style="border: none;">Cancelar</button>
        </div>
    </form>
    <form>
        <div class="form-group">
            <img src="URL_IMAGEN_1" alt="Imagen de Evento">
        </div>
        <div class="form-group">
            <label for="nombre">Nombre del Evento:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="banda">Nombre de la Banda:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="horario">Horario:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <label for="duracion">Duración:</label>
            <div class="data-container">************</div>
        </div>
        <div class="form-group">
            <button type="button" onclick="window.history.back()" style="border: none;">Cancelar</button>
        </div>
    </form>

</div>

</body>
</html>