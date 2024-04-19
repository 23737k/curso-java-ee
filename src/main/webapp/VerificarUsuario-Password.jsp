<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dominio.ConexionConBBDD, java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conexion = ConexionConBBDD.RealizarConexion();

	String usuario = request.getParameter("usuario");
	String password = request.getParameter("password");
	
	//Creamos una consulta preparada para evitar sql inyection
	PreparedStatement statement = conexion.prepareStatement("SELECT * FROM usuarios WHERE USUARIO=? AND PASSWORD = ?");
	//Relleno con las variables usuario y password los ? que aparecen en la consulta preparada
	statement.setString(1, usuario);
	statement.setString(2, password);
	
	//Ejecuta la query. La consulta me devolverá un ResultSet que es un objeto que representa el conjunto de datos devuelto por una consulta sql
	ResultSet resultset  = statement.executeQuery();
	//Esto dice: Si hay al menos un elemento en el resultSet, es decir si la consulta devolvió al menos una fila -> existe usuario y pass
	if(resultset.next()) out.println("Inicio de Sesion exitoso!");
	else out.println("El usuario o contraseña es incorrecto o no existen");
	
	
	%>
</body>
</html>