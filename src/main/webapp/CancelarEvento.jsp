<%--
  Created by IntelliJ IDEA.
  User: esteb
  Date: 23-11-2023
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Eventos</title>
    <style>
        .event {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }
        .event img {
            max-width: 100px;
            max-height: 100px;
        }
        .cancel-btn {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div id="events-list">

</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const eventos = [
            {
                nombre: "Concierto",
                imagen: "https://via.placeholder.com/100",
                horario: "20:00",
                banda: "Banda Ejemplo 1"
            },
            {
                nombre: "Festival",
                imagen: "https://via.placeholder.com/100",
                horario: "15:00",
                banda: "Banda Ejemplo 2"
            },
            {
                nombre: "Otro evento",
                imagen: "https://via.placeholder.com/100",
                horario: "18:30",
                banda: "Banda Ejemplo 3"
            },
            // Agrega más eventos aquí con la misma estructura
            {
                nombre: "Evento Adicional",
                imagen: "https://via.placeholder.com/100",
                horario: "12:00",
                banda: "Banda Ejemplo 4"
            }
        ];

        function mostrarEventos() {
            const eventsContainer = document.getElementById('events-list');

            eventos.forEach((evento, index) => {
                const eventDiv = document.createElement('div');
                eventDiv.classList.add('event');

                const imagen = document.createElement('img');
                imagen.src = evento.imagen;
                eventDiv.appendChild(imagen);

                const nombreEvento = document.createElement('p');
                nombreEvento.textContent = `Nombre: ${evento.nombre}`;
                eventDiv.appendChild(nombreEvento);

                const horario = document.createElement('p');
                horario.textContent = `Horario: ${evento.horario}`;
                eventDiv.appendChild(horario);

                const banda = document.createElement('p');
                banda.textContent = `Banda: ${evento.banda}`;
                eventDiv.appendChild(banda);

                const cancelBtn = document.createElement('button');
                cancelBtn.classList.add('cancel-btn');
                cancelBtn.textContent = 'Cancelar';
              
                cancelBtn.addEventListener('click', () => {
                    cancelarEvento(index);
                });
                eventDiv.appendChild(cancelBtn);

                eventsContainer.appendChild(eventDiv);
            });
        }

        function cancelarEvento(index) {
            eventos.splice(index, 1);


            const eventsContainer = document.getElementById('events-list');
            eventsContainer.innerHTML = '';
            mostrarEventos();
        }


        mostrarEventos();
    });
</script>
</body>
</html>