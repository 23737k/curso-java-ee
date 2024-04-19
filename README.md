## Formulario completo con persistencia
  - [Registro](src/main/webapp/Registro.jsp): esta es la página de registro del formulario. Hay que ejecutar el archivo -> Run as Server
  - [RecolectaDatos](src/main/webapp/RecolectaDatos.jsp): Archivo jsp que recolecta los datos del request, los almacena en variables, y con dichas variables crea una sentencia sql para hace el insert.
  - [ConexionConBBDD](src/main/java/dominio/ConexionConBBDD.java): Esta clase se encarga de conectarse con las base de datos. Para que funcionara tuve que hacer dos cosas:
  - [InicioDeSesion](src/main/webapp/InicioDeSesion.jsp):  Aquí se redirigirá una vez que se haya completado el registro. Se pide usuario y contraseña. Redirige a VerificarUsuario-Password
  - [VerificarUsuario-Password](src/main/webapp/VerificarUsuario-Password.jsp): Se encarga de realizar una consulta preparada a la bd e indica si el log in fue exitoso o no

      - Agregar la linea Class.forName("com.mysql.jdbc.Driver"); ante del *getConnection()*
      - Click derecho proyecto -> Properties -> Deployment Assembly -> Add -> Java Build Path Entries -> (next) -> Maven Dependencies -> Finish -> Apply

Nota: tener tabla creada y bien configurado las columnas.
