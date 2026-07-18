package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase encargada de establecer la conexión con la base de datos MySQL.
 * Autor: Rafael Gomez
 */
public class Conexion {

    // Datos de conexión
    private static final String URL = "jdbc:mysql://localhost:3306/improstock";
    private static final String USER = "root";
    private static final String PASSWORD = "1234";

    /**
     * Retorna una conexión con la base de datos.
     */
    public static Connection getConexion() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();

        }

        return con;
    }

}