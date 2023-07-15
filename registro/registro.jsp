<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="../registro/registro.css">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@700&display=swap" rel="stylesheet">
	
</head>
<body>
    <header>
        <img src="../assets/logo2.png" alt="logo">
    </header>
    <section>
        <!-- Componente de formulario -->
        <div class="left">
            <h2>¡Regístrate ahora!</h2>
            <p>Es gratis y lo será simple</p>
            <form action="registro_auth.jsp" method="post">
                <div class="formulario_input">
	                <div>
	                    <label for="nombre">Nombre <span>*</span></label>
	                    <input type="text" placeholder="Ingresar nombre" name="nombre" required>
	                </div>
	                <div>
                    	<label for="apellido">Apellido <span>*</span></label>
                    	<input type="text" placeholder="Ingresar apellido" name="apellido" required>
                	</div>
                	<div>
	                    <label for="edad">Edad <span>*</span></label>
	                    <input type="number" placeholder="Ingresar edad" name="edad" required>
	                </div>
                	<div>
                    	<label for="usuario">Usuario <span>*</span></label>
                    	<input type="text" placeholder="Ingresar usuario" name="usuario" required>
                	</div>
                	<div>
                    	<label for="contrasena">Contraseña <span>*</span></label>
                    	<input type="password" placeholder="Ingresar contrasena" name="contrasena" required>
                	</div>
                </div>
                <!-- Imprimir el mensaje de error -->
                <% 
					String error = (String) request.getAttribute("error");
					if (error != null) {
				%>
				
                <p class="error"><%= error %></p>
                <%
					}
				%>
       
                <button type="submit">Registrarse</button>
            </form>
            <h4>¿Ya tienes una cuenta? <a href="../login/login.jsp">Iniciar sesión</a></h4>
        </div>
        <!-- Componente ilustrativo -->
        <div class="right">
            <h1>
                <span class="rojo">Descubre</span>
                <span class="amarillo">el</span>
                <span class="rojo">mundo</span>
                <span class="amarillo">a traves</span> 
                <span class="rojo">de</span>
                <span class="amarillo">la</span>
                <span class="rojo">ciencia</span>
            </h1>
            <img src="../assets/registro.png" alt="img_registro" class="registro_img">
        </div>
    </section>
</body>
</html>