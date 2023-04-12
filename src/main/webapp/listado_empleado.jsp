<%@ page import= "datos.Mantenimiento" %>
<%@ page import= "java.sql.*" %>
<%@ include file="header.jsp" %>
<body>
	<div class="container">
		<h4 class="NombreVentana">Listado de Empleados</h4><hr>
			<%
				Mantenimiento m=new Mantenimiento();
				ResultSet data =m.lista_empleado("select * from Empleado");
			%>
		<table id="datos" class="table table-dark table-striped table-hover" number-per-page="3">
			<tr>
				<td>Codigo:</td>
				<td>Apellidos:</td>
				<td>Nombres:</td>
				<td>Sexo:</td>
				<td>Ocupacion:</td>
				<td>AFP:</td>
				<td>Accion</td>
			</tr>
			<%while(data.next()){ %>
    		<tr class="table-dark">
        		<td class="table-light"><%= data.getInt(1) %></td>
        		<td class="table-light"><%= data.getString(2) %></td>
        		<td class="table-light"><%= data.getString(3) %></td>
        		<td class="table-light"><%= data.getString(4) %></td>
        		<td class="table-light"><%= data.getString(5) %></td>
        		<td class="table-light"><%= data.getString(6) %></td>
        		<td><button class="btn btn-danger">
        			<a href="eliminar_empleado.jsp?Codigo=<%=data.getInt(1)%>">eliminar</a>
        			</button></td>
    		</tr>
			<% } %>
		</table>
		<form action="proceso_busqueda.jsp">
			<div class="row g-0 text-center">
  				<div class="col-sm-6 col-md-8"><br>
  					<h6>Buscar empleados por su ocupacion:</h6><hr class="linea">
  					Ocupacion:
					<input type="text" name="ocupacion" value="">
					<button type="submit" class="btn btn-primary">Buscar</button>
  				</div>
  		</form>
  				<div class="col-6 col-md-4"><br>
  					<h6>Insertar nuevo empleado:</h6><hr class="linea">
  					<button type="button" class="btn btn-success"><a href="insertar_empleado.jsp">
  						Insertar Nuevo Empleado +</a></button>
  				</div>
			</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>