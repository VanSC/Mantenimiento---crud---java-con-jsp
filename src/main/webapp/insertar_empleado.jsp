<%@ page import= "datos.Mantenimiento" %>
<%@ page import= "java.sql.*" %>
<%@ include file="header.jsp" %>
<body>
	<div class="container">
		<h4 class="NombreVentana">Registro de Empleado</h4>
		<div class="card">
		<form class="formregistro" action="proceso_registro.jsp">
		<div class="container text-center">
  			<div class="row align-items-end">
    			<div class="col">
      				Apellido:
					<input class="datostxt border"  type="text" name="apellido" value="">
    			</div>
    			<div class="col">
      				Nombres:
					<input class="datostxt border" type="text" name="nombre" value="">
    			</div>
  			</div>
		</div><br><hr>
		<div class="container text-center">
			Sexo: <br>
  			<div class="row align-items-start">
    			<div class="col">
      				<input type="checkbox" name="sexo" value="F">Femenino</input>
    			</div>
    			<div class="col">
      				<input type="checkbox" name="sexo" value="M">Masculino</input>
    			</div>
  			</div>
		</div><br><hr>
		<div class="container text-center">
  			<div class="row align-items-start">
    			<div class="col">
    				Ocupacion:
      				<select id="subject_input" name="ocupacion">
						<option value="Desarrolladora fron-end">Desarrolladora fron-end</option>
						<option value="Desarrolladora back-end">Desarrolladora back-end</option>
						<option value="Analista de datos">Analista de datos</option>
						<option value="Administradora de redes">Administradora de redes</option>
					</select>
    			</div>
    			<div class="col">
      				AFP:
					<select name="afp">
						<option value="Fondo proteccion de capital">
							Fondo protección de capital</option>
						<option value="Fondo de preservacion de capital">
							Fondo de preservación de capital</option>
						<option value="Fondo mixto">Fondo mixto</option>
					</select>
    			</div>
  			</div>
		</div><br><br>
		<div class="container text-center">
  			<div class="row align-items-start">
    			<div class="col">
      				<input class="btn btn-success" type="submit" value="Registrar"></td>
      				<input class="btn btn-danger" type="reset" value="Limpiar">
    			</div>
  			</div>
		</div>
		</form>
	</div><br>
	<div class="linkback"><a href="listado_empleado.jsp">Ver listado</a></div>
	<%@ include file="footer.jsp" %>
</body>
</html>