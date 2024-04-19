package dominio;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionConBBDD {
	public static Connection RealizarConexion(){
		final String url = "jdbc:mysql://sql10.freesqldatabase.com:3306/sql10699337";
		  final String user = "sql10699337";
		  final String pass = "MLeR2Lz8Ii";
		  Connection conexion = null;
		  try {
			System.out.println("Intentando conectar con la BBDD");
			//Crear conexion  
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Conexion exitosa!!!");
			conexion = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			System.out.println("CONEXION FALLIDA");
			e.printStackTrace();					//esto hace que nos muestre que error hubo. Sino no muestra nada. Es muy util
		}
		  return conexion;
	}
}
