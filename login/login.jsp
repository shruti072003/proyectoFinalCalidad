<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="../login/login.css">
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
            <h2>¡Bienvenidos!</h2>
            <p>Por favor ingrese sus credenciales</p>
            <form action="../login/login_auth.jsp" method="post">
                <div>
                    <label for="usuario">Usuario <span>*</span></label>
                    <input type="text" placeholder="Ingresar usuario" name="usuario" required>
                </div>
                <div>
                    <label for="contrasena">Contraseña <span>*</span></label>
                    <input type="password" placeholder="Ingresar contrasena" name="contrasena" required>
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
                
                <button type="submit">Iniciar Sesion</button>
            </form>
            <h4>¿No tienes una cuenta? <a href="../registro/registro.jsp">Regístrate</a></h4>
        </div>
        <!-- Componente ilustrativo -->
        <div class="right">
            <h1>
                <span class="rojo">Desata</span>
                <span class="amarillo">el</span>
                <span class="rojo">poder</span>
                <span class="amarillo">del</span> 
                <span class="rojo">conocimiento</span>
            </h1>
            <img src="../assets/login.png" alt="img_login" class="login_img">
        </div>
    </section>
</body>
</html>