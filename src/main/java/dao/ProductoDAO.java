package dao;

import java.util.ArrayList;
import modelo.Producto;

/**
 * DAO encargado de gestionar los productos en memoria.
 * Autor: Rafael Gomez
 */
public class ProductoDAO {

    // Lista que almacena los productos
    private static ArrayList<Producto> listaProductos = new ArrayList<>();

    /**
     * Guarda un producto en la lista.
     */
    public void guardar(Producto producto) {
        listaProductos.add(producto);
    }

    /**
     * Retorna todos los productos.
     */
    public ArrayList<Producto> listar() {
        return listaProductos;
    }

    /**
     * Elimina un producto por su posición.
     */
    public void eliminar(int indice) {
        if (indice >= 0 && indice < listaProductos.size()) {
            listaProductos.remove(indice);
        }
    }
}