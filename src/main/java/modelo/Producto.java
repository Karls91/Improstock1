package modelo;

/**
 * Clase que representa un producto del inventario.
 * Autor: Rafael Gomez
 */
public class Producto {

    // Identificador único del producto
    private int idProducto;

    // Categoría a la que pertenece el producto
    private int idCategoria;

    // Nombre del producto
    private String nombre;

    // Referencia o código del producto
    private String referencia;

    // Descripción del producto
    private String descripcion;

    // Precio del producto
    private double precio;

    // Cantidad disponible en inventario
    private int stockActual;

    // Constructor vacío
    public Producto() {
    }

    // Getters y Setters

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStockActual() {
        return stockActual;
    }

    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }
}