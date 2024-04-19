<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dominio.ConexionConBBDD, java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conexion = ConexionConBBDD.RealizarConexion();

	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String password = request.getParameter("password");
	String pais = request.getParameter("pais");
	String tec = request.getParameter("tec");

	String sqlInstruction = "INSERT INTO usuarios (nombre, apellido, usuario, password, pais, tecnologia) " +
            "VALUES ('" + nombre + "', '" + apellido + "', '" + usuario + "', '" + password + "', '" + pais + "', '" + tec + "')";

	Statement statement = conexion.createStatement();
	statement.executeUpdate(sqlInstruction);
	out.println("Registrado con Exito!");
	%>
</body>
</html>