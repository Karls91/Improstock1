<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ImproStock - Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/estilos.css">

</head>

<body onload="bienvenida(); mostrarFecha();">

<div class="container-fluid">

    <div class="row">

        <!-- Menú lateral -->
        <div class="col-md-2 sidebar">

            <div class="text-center mt-4 mb-4">

                <img src="img/logo-improstock.png"
                     alt="ImproStock"
                     class="logo">

            </div>

            <a href="dashboard.jsp">🏠 Dashboard</a>

            <a href="ProductoServlet">📦 Productos</a>

            <a href="index.jsp">🚪 Cerrar sesión</a>

        </div>

        <!-- Contenido -->
        <div class="col-md-10 p-4">

            <h2>Panel de Control - ImproStock</h2>

            <p class="subtitulo">
                Bienvenido al Sistema de Gestión de Inventarios ImproStock.
            </p>

            <p>
                <strong>Fecha actual:</strong>
                <span id="fechaActual"></span>
            </p>

            <hr>

            <div class="row">

                <div class="col-md-4 mb-4">

                    <div class="card p-4">

                        <h5>Módulos</h5>

                        <h2 class="text-primary">1</h2>

                        <p>Módulo de productos disponible.</p>

                    </div>

                </div>

                <div class="col-md-4 mb-4">

                    <div class="card p-4">

                        <h5>Framework</h5>

                        <h2 class="text-success">Jakarta EE</h2>

                        <p>Aplicación desarrollada con JSP y Servlets.</p>

                    </div>

                </div>

                <div class="col-md-4 mb-4">

                    <div class="card p-4">

                        <h5>Versión</h5>

                        <h2 class="text-warning">1.0</h2>

                        <p>Versión inicial del sistema.</p>

                    </div>

                </div>

            </div>

            <div class="row">

                <div class="col-md-6 mb-4">

                    <div class="card p-4">

                        <h4>Resumen General</h4>

                        <p>
                            Desde este panel podrá acceder al módulo de productos,
                            registrar información y visualizar los datos del
                            inventario mediante una aplicación desarrollada con
                            Jakarta EE.
                        </p>

                    </div>

                </div>

                <div class="col-md-6 mb-4">

                    <div class="card p-4">

                        <h4>Estado del Sistema</h4>

                        <ul>

                            <li>✔ Proyecto compilado correctamente.</li>

                            <li>✔ Servidor Tomcat operativo.</li>

                            <li>✔ Módulo de productos disponible.</li>

                            <li>✔ Aplicación lista para pruebas.</li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

<script src="js/script.js"></script>

</body>

</html>