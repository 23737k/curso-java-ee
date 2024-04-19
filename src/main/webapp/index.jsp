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
		display:flex;
		justify-content: center;
		min-width: 100%;
	}

	input, select{
		display: block;
		margin-top: 5px;
		width:100%;
	}
	input[type="radio"]{
	}	
	
	label[class="radio"]{
	}
	
	.container{
		background-color: yellow;
		width: 400px;
		height: 450px;
		padding: 10px;
	}
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>Registro</h1>
	<form action="RecolectaDatos.jsp" method="post">
		<label>Nombre: <input type="text" name="nombre"></label> 
		<label>Apellido: <input type="text" name="apellido"></label> 
		<label>Usuario: <input type="text" name="usuario"></label> 
		<label>Contraseña: <input type="password" name="password"></label> 
		<label>Pais: 
		<select name="pais">
			<option value="" disabled selected>Seleccione un pais</option>
			<option value="ar">Argentina</option>
			<option value="mx">Mexico</option>
			<option value="cl">Chile</option>
			<option value="es">España</option>
			<option value="co">Colombia</option>
			<option value="ve">Venezuela</option>
			<option value="ec">Ecuador</option>
			<option value="other">Otro</option>
		</select>
		</label>
		<label class="radio"><input type="radio" name="tec" value="java"> Java</label>
		<label class="radio"><input type="radio" name="tec" value="js"> Javascript</label>
		<label class="radio"><input type="radio" name="tec" value="php"> PHP</label>
		<input type="submit" value="Enviar">
	</form>

</div>
	
	
</body>
</html>