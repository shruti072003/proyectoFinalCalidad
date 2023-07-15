<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.*"  %>
<%
	//conexion base de datos
	String nombre = request.getParameter("nombre");
	String cedula = request.getParameter("cedula");
	String curso_escogido="";
	String fecha = request.getParameter("fecha_inicio");
	Class.forName("com.mysql.jdbc.Driver");
	Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solociencia","root","");
	Statement dbstatement = dbconect.createStatement();
	try{
		PreparedStatement verificarRegistro = dbconect.prepareStatement("SELECT cedula FROM programacion where cedula = ?");
		verificarRegistro.setString(1, cedula);
			 	
		ResultSet resultado = verificarRegistro.executeQuery();
		if(resultado.next()){
			String message = "Ya se encuentra registrado!";
			request.setAttribute("message", message);
			RequestDispatcher mensaje = request.getRequestDispatcher("../formularios/formularioProgramacion.jsp");
			mensaje.include(request, response);
		}else {
			String insertarsql = "INSERT INTO programacion (nombre, cedula, fecha_inicio) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
			dbstatement.executeUpdate(insertarsql);	
			String exitoso = "Registro exitoso!";
			request.setAttribute("exitoso", exitoso);
			RequestDispatcher menexitoso = request.getRequestDispatcher("../formularios/formularioProgramacion.jsp");
			menexitoso.include(request, response);
		}
	}
	catch (Exception e) {
		out.print(e);
	}
%>