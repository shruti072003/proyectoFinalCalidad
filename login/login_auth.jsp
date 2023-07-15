<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>

<%
	/* Recolectar los datos insertados por el usuario */
	String usuario = request.getParameter("usuario");
	String contrasena = request.getParameter("contrasena");
	
	// Cargar el driver
	Class.forName("com.mysql.jdbc.Driver");
	// Conexion a la base de datos
	Connection dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solociencia","root","");
	Statement dbstatement = dbconnect.createStatement();
	
	try {
		/* Verificar si el usuario ya existe */
		PreparedStatement verificarUsuario = dbconnect.prepareStatement("SELECT usuario FROM usuarios WHERE usuario = ?");
    	verificarUsuario.setString(1, usuario);
    	
    	ResultSet resUsuario = verificarUsuario.executeQuery(); // Verificar si se obtuvo el nombre de usuario insertado
		
    	if(resUsuario.next()) {
    		/* Si el usuario ya se encuentra registrado, verificar la contrasena */
    		PreparedStatement verificarContrasena = dbconnect.prepareStatement("SELECT contrasena FROM usuarios WHERE usuario = ? AND contrasena = ?");
    		verificarContrasena.setString(1, usuario);
    		verificarContrasena.setString(2, contrasena);
    	
    		ResultSet resCon = verificarContrasena.executeQuery(); // Verificar si se obtuvo el nombre de usuario insertado
    		
    		if(resCon.next()) {
    			// Se valida que el usuario y contrasena sean correctos
    			response.sendRedirect("../home/home.html"); // se redirecciona a la pagina HOME
    		}
    		else {
    			// Se envia el mensaje de error
    			String error = "Contraseña incorrecta.";
        		request.setAttribute("error", error);
        		RequestDispatcher mensaje = request.getRequestDispatcher("../login/login.jsp");
        		mensaje.include(request, response);
    		}
    	}
    	else {
    		// Se envia el mensaje de error
    		String error = "El usuario no se encuentra registrado.";
    		request.setAttribute("error", error);
    		RequestDispatcher mensaje = request.getRequestDispatcher("../login/login.jsp");
    		mensaje.include(request, response);
			
    	}
	} catch (Exception e) {
		out.print(e);
	}
	
	/* try {
		/* Verificar si el usuario existe
		PreparedStatement verificarUsuario = dbconnect.prepareStatement("SELECT usuario FROM usuarios WHERE usuario = ? AND CONTRASENA = ?");
    	verificarUsuario.setString(1, usuario);
    	verificarUsuario.setString(2, contrasena);
    	
    	ResultSet resultado = verificarUsuario.executeQuery(); // Verificar si se obtuvo el nombre de usuario insertado por el usuario
		
    	if(resultado.next()) {
    		// El usuario se encuentra registrado, se redirecciona a la pagina HOME
    		response.sendRedirect("../home/home.html");
    	}
    	else {
    		String error = "Usuario o contraseña incorrecta";
    		request.setAttribute("error", error);
    		RequestDispatcher mensaje = request.getRequestDispatcher("../login/login.jsp");
    		mensaje.include(request, response);
			
    	}
	} catch (Exception e) {
		out.print(e);
	} */
%>