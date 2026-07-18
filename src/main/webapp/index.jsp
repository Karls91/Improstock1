<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ImproStock - Inicio de Sesión</title>

    <link rel="stylesheet" href="css/estilos.css">

</head>

<body>

    <div class="login-container">

        <div class="login-card">

            <img src="img/logo-improstock.png"
                 alt="ImproStock"
                 class="logo">

            <h2>Inicio de Sesión</h2>

            <p class="subtitulo">
                Sistema de Gestión de Inventarios y Pedidos
            </p>

            <form action="dashboard.jsp" method="get">

                <label for="correo">Correo electrónico</label>

                <input
                    type="email"
                    id="correo"
                    name="correo"
                    placeholder="correo@empresa.com"
                    required>

                <label for="password">Contraseña</label>

                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="********"
                    required>

                <button type="submit">
                    Ingresar
                </button>

            </form>

        </div>

    </div>

</body>

</html>