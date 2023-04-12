<%@ page import= "datos.Mantenimiento" %>
<%@ page import= "java.sql.*" %>
<%@ include file="header.jsp" %>
<body>
<div class="container">
		<%String ocupacion=request.getParameter("ocupacion"); %>
		<h4 class="NombreVentana">Empleados con ocupacion = <%=ocupacion %></h4><hr>
			<%
				Mantenimiento m=new Mantenimiento();
				ResultSet data =m.busqueda_empleado(ocupacion);
			%>
		<table class="table table-dark table-striped table-hover">
			<tr>
				<td>Codigo:</td>
				<td>Apellidos:</td>
				<td>Nombres:</td>
				<td>Sexo:</td>
				<td>Ocupacion:</td>
				<td>AFP:</td>
				<td>Acciones</td>
			</tr>
			<%while(data.next()){ %>
    		<tr class="table-dark">
        		<td class="table-light"><%= data.getInt(1) %></td>
        		<td class="table-light"><%= data.getString(2) %></td>
        		<td class="table-light"><%= data.getString(3) %></td>
        		<td class="table-light"><%= data.getString(4) %></td>
        		<td class="table-light"><%= data.getString(5) %></td>
        		<td class="table-light"><%= data.getString(6) %></td>
        		<td><button class="btn btn-danger" >
        		<a href="eliminar_empleado.jsp?Codigo=<%=data.getInt(1)%>">
        			eliminar</a></button>
    		</tr>
			<% } %>
		</table>
		<div class="linkback"><a href="listado_empleado.jsp">Ver listado</a></div>
		<%@ include file="footer.jsp" %>
</body>
</html>