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
		margin:20px auto;
		width:50%;
	}
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>Registro</h1>
	<form action="RecolectaDatos.jsp" method="post">
		<label>Nombre: <input class="block-element" type="text" name="nombre" max=10 required></label> 
		<label>Apellido: <input class="block-element" type="text" name="apellido" required></label> 
		<label>Usuario: <input class="block-element" type="text" name="usuario" required></label> 
		<label>Contraseña: <input class="block-element" type="password" name="password" required></label> 
		<label>Pais: 
		<select name="pais" required>
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
		<input type="radio" id="java" name="tec" value="java" required> <label class="radio" for="java"> Java</label>
		<br>
		<input type="radio" id="js" name="tec" value="js" required> <label class="radio" for="js"> Javascript</label>
		<br>
		<input type="radio" id="php" name="tec" value="php" required> <label class="radio" for="php"> PHP</label>
		<input type="submit" value="Enviar">
	</form>

</div>
	
	
</body>
</html>