<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Producto"%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ImproStock - Productos</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/estilos.css">

</head>

<body>

<%
ArrayList<Producto> lista =
(ArrayList<Producto>) request.getAttribute("listaProductos");
%>

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

            <h2>Gestión de Productos</h2>

            <div class="card p-4 mb-4">

                <form action="ProductoServlet" method="post">

                    <input type="hidden" name="accion" value="guardar">

                    <div class="mb-3">
                        <label>ID Producto</label>
                        <input type="number" class="form-control" name="idProducto" required>
                    </div>

                    <div class="mb-3">
                        <label>ID Categoría</label>
                        <input type="number" class="form-control" name="idCategoria" required>
                    </div>

                    <div class="mb-3">
                        <label>Nombre</label>
                        <input type="text" class="form-control" name="nombre" required>
                    </div>

                    <div class="mb-3">
                        <label>Referencia</label>
                        <input type="text" class="form-control" name="referencia">
                    </div>

                    <div class="mb-3">
                        <label>Descripción</label>
                        <textarea class="form-control" name="descripcion"></textarea>
                    </div>

                    <div class="mb-3">
                        <label>Precio</label>
                        <input type="number" step="0.01" class="form-control" name="precio">
                    </div>

                    <div class="mb-3">
                        <label>Stock</label>
                        <input type="number" class="form-control" name="stockActual">
                    </div>

                    <button type="submit" class="btn btn-primary">
                        Guardar Producto
                    </button>

                </form>

            </div>

            <div class="card p-4">

                <h4>Productos Registrados</h4>

                <table class="table table-striped">

                    <thead>

                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Referencia</th>
                            <th>Precio</th>
                            <th>Stock</th>
                        </tr>

                    </thead>

                    <tbody>

                    <%
                    if(lista != null){

                        for(Producto p : lista){
                    %>

                        <tr>

                            <td><%=p.getIdProducto()%></td>
                            <td><%=p.getNombre()%></td>
                            <td><%=p.getReferencia()%></td>
                            <td><%=p.getPrecio()%></td>
                            <td><%=p.getStockActual()%></td>

                        </tr>

                    <%
                        }
                    }
                    %>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>

</body>

</html>