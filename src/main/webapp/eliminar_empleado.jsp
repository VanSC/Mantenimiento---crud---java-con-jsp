<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "datos.Mantenimiento" %>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Mantenimiento m=new Mantenimiento();
		int cod=Integer.parseInt(request.getParameter("Codigo"));
		m.eliminar_empleado(cod);
		response.sendRedirect("listado_empleado.jsp");
	%>
</body>
</html>