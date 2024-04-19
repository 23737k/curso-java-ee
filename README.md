## Formulario completo con persistencia
  - [Index](src/main/webapp/index.jsp): esta es la página de inicio del formulario. Hay que ejecutar el archivo -> Run as Server
  - [RecolectaDatos](src/main/webapp/RecolectaDatos.jsp): Archivo jsp que recolecta los datos del request, los almacena en variables, y con dichas variables crea una sentencia sql para hace el insert.
  - [ConexionConBBDD](src/main/java/dominio/ConexionConBBDD.java): Esta clase se encarga de conectarse con las base de datos. Para que funcionara tuve que hacer dos cosas:

      - Agregar la linea Class.forName("com.mysql.jdbc.Driver"); ante del *getConnection()*
      - Click derecho proyecto -> Properties -> Deployment Assembly -> Add -> Java Build Path Entries -> (next) -> Maven Dependencies -> Finish -> Apply

Nota: tener tabla creada y bien configurado las columnas.
