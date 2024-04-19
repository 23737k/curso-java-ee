<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	*{
		margin:0;
		padding:0;
		box-sizing: border-box;
	}
	
	body{
		padding: 0 40px;
		align-content:center;
		min-height:100vh;
	}

	input, select{
		margin-top: 5px;
		display:block;
		height:40px;
		margin-bottom: 10px;
		font-size: 20px;
	}
	
	.block-element{
		width:100%;
	}
	
	input[type="radio"]{
		display:inline;
	}	
	label[class="radio"]{
		display:inline-block;
	}
	
	.container{
		display:flex;
		background-color: #0083CA;
		max-width: 50vw;
		min-height: 70vh;
		padding: 50px;
		margin:auto;
		flex-direction:column;
		font-family: sans-serif;
		font-size: 24px;
	}
	
	h1{
		text-align:center;
	}
	
	input[type="submit"]{
		margin:40px auto;
		width:50%;
	}
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>Iniciar Sesion</h1>
	<form action="VerificarUsuario-Password.jsp" method="post">
		<label>Usuario: <input class="block-element" type="text" name="usuario" required></label> 
		<label>Contraseña: <input class="block-element" type="password" name="password" required></label> 
		<input type="submit" value="Iniciar Sesion">
	</form>
</div>
</body>
</html>