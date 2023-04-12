<%@ page import= "datos.Mantenimiento" %>
<%@ page import= "java.sql.*" %>
<body>
	<h3>Procesando venta</h3>
	<%
    	String apellido=request.getParameter("apellido");
    	String nombre=request.getParameter("nombre");
    	String sexo=request.getParameter("sexo");
    	String ocupacion=request.getParameter("ocupacion");
    	String afp=request.getParameter("afp");
    
    	Mantenimiento m=new Mantenimiento();
    	boolean res=m.insertar_empleado(apellido,nombre,sexo,ocupacion,afp);
    	if(res==true) {
	%>
    <div class="alert alert-success" role="alert">
  			Empleado registrado Correctamente :D
  			<% response.sendRedirect("listado_empleado.jsp"); %>
	</div>
    <%}else{ %>
    <div class="alert alert-success" role="alert">
  		 Error en el registro!!!
	</div>
    <% }%>
</body>
</html>