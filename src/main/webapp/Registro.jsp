<!-- TODOS LOS jps deben incluir esto en la primera linea -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Usuarios Registrados</h2>
	<p>Usuario confirmado: </p>
	<jsp:include page="MostrarUsuarios.jsp"/>
</body>
</html>

<!-- 
	Los archivos jsp pueden incluir dentro:
		-html
		-jsp 
	Los html NO PUEDEN INCLUIR NADA QUE NO SEA HTML
	Vemos que este archivo incluye el MostrarUsuarios.jsp 


 -->