<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>

<% 
	/* Recoleccion de los valores insertados por el usuario  */
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String edad = request.getParameter("edad");
	String usuario = request.getParameter("usuario");
	String contrasena  = request.getParameter("contrasena");
	
	// Cargar el driver
	Class.forName("com.mysql.jdbc.Driver");
	// Conexion a la base de datos
    Connection dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solociencia","root","");
	Statement dbstatement = dbconnect.createStatement();
	
    try {
    	/* Verificar si el usuario ya existe */
    	PreparedStatement verificarUsuario = dbconnect.prepareStatement("SELECT usuario FROM usuarios WHERE usuario = ?");
    	verificarUsuario.setString(1, usuario);
    	
    	ResultSet resultado = verificarUsuario.executeQuery(); // Verificar si se obtuvieron datos apartir de la consulta realizada
    	
    	if(resultado.next()) {
    		String error = "Usuario ya se encuentra registrado";
    		request.setAttribute("error", error);
    		RequestDispatcher mensaje = request.getRequestDispatcher("../registro/registro.jsp");
    		mensaje.include(request, response);

    	}
    	else {
    		/* Se insertan los credenciales del usuario en la base de datos */  		
			String insertarUsuario = "INSERT INTO usuarios (nombre, apellido, edad, usuario, contrasena) VALUES ('"+nombre+"','"+apellido+"', '"+edad+"', '"+usuario+"','"+contrasena+"')";
			dbstatement.executeUpdate(insertarUsuario);
			response.sendRedirect("../login/login.jsp");
			
    	}
    } catch (Exception e) {
    	out.print(e);
    }	
%>
