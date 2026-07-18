package controlador;

import dao.ProductoDAO;
import modelo.Producto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet encargado de gestionar las operaciones del módulo Productos.
 * Autor: Rafael Gomez
 */
@WebServlet("/ProductoServlet")
public class ProductoServlet extends HttpServlet {

    private ProductoDAO dao = new ProductoDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener la acción enviada desde el formulario
        String accion = request.getParameter("accion");

        if ("guardar".equals(accion)) {

            // Crear un nuevo producto
            Producto producto = new Producto();

            producto.setIdProducto(Integer.parseInt(request.getParameter("idProducto")));
            producto.setIdCategoria(Integer.parseInt(request.getParameter("idCategoria")));
            producto.setNombre(request.getParameter("nombre"));
            producto.setReferencia(request.getParameter("referencia"));
            producto.setDescripcion(request.getParameter("descripcion"));
            producto.setPrecio(Double.parseDouble(request.getParameter("precio")));
            producto.setStockActual(Integer.parseInt(request.getParameter("stockActual")));

            // Guardar el producto
            dao.guardar(producto);
        }

        // Enviar la lista de productos a la vista
        request.setAttribute("listaProductos", dao.listar());

        request.getRequestDispatcher("productos.jsp")
               .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Mostrar los productos registrados
        request.setAttribute("listaProductos", dao.listar());

        request.getRequestDispatcher("productos.jsp")
               .forward(request, response);
    }
}