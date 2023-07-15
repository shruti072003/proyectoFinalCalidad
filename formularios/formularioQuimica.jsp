<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Quimica y Biologia</title>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="forms_styling.css">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Componente Navbar -->
    <nav>
        <div class="upper_nav">
            <div class="left">
                <img src="../assets/logo2.png" alt="logo">
                <!-- Componente de búsqueda -->
                <form action="https://google.com/search" method="get" target="_blank" class="search">
                    <img src="../assets/google_icon.png" alt="google_icon">
                    <input type="text" placeholder="Buscar" name="q">
                    <button type="submit" class="search_icon"><img src="../assets/search.svg" alt="search_icon"></button>
                </form>
            </div>
            <div class="right">
                <a href="https://www.facebook.com/profile.php?id=100094068065353&sk=about"><img src="../assets/facebook.svg" class="svg-icon" alt="facebook"></a>
                <a href="https://www.instagram.com/solocienci4/"><img src="../assets/instagram.svg" alt="instagram"></a>
            </div>
        </div>
        <div class="lower_nav">
            <ul>
                <li><a href="../home/home.html">Home</a></li>
                <li><a href="../formularios/formularioCiencias.jsp">Ciencias Naturales</a></li>
                <li><a href="../formularios/formularioQuimica.jsp">Quimica y Biologia</a></li>
                <li><a href="../formularios/formularioProgramacion.jsp">Programacion</a></li>
                <li><a href="../referencias/referencias.html">Referencias</a></li>
                <li><a href="../contactenos/contactenos.html">Contactanos</a></li>
            </ul>
        </div>
    </nav>

    <!-- Componente del contenido principal -->
    <section>
        <div class="left-section">
            <h1>Formulario de registro: Quimica y Biologia</h1>
            <div id="componente">
                <form action="../formularios/registroQuimica.jsp">
                    <label for="nombre">Nombre<span>*</span></label><br>
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" class="celda" required><br>
                    <label for="cedula">Cedula<span>*</span></label><br>
                    <input type="text" id="cedula" name="cedula" placeholder="Cedula" class="celda" required><br>
                    <!-- Fecha de inicio -->
                    <label for="fecha_inicio" id="finicio">Fecha de inicio<span>*</span></label><br>
                    <input type="radio" id="20" name="fecha_inicio" value="20 de Julio">
                    <label for="20">20 de Julio</label><br>
                    <input type="radio" id="24" name="fecha_inicio" value="24 de Octubre" checked>
                    <label for="24">24 de Octubre</label><br>
                    <input type="radio" id="14" name="fecha_inicio" value="14 de Noviembre">
                    <label for="14">14 de Noviembre</label><br>
                            <!-- Imprimir el mensaje de error -->
                <% 
					String message = (String) request.getAttribute("message");
                	String exitoso = (String) request.getAttribute("exitoso");
					if (message != null) {
				%>
				
                <p class="mensaje"><%= message %></p>
                <input type="submit" id="submit" value="Registrar">
                <%
					}
					else if(exitoso != null){
				%>
				<p class="mensaje"><%= exitoso %></p>
				<a href="../home/home.html" id="submit-a">Home</a>
				<%
					}
					else{
				%>
				<input type="submit" id="submit" value="Registrar">
				<%
					}
				%>
                </form>
                </form>
            </div>
        </div>
        <div class="right-section">
            <div class="imagen">
                <img src="../assets/Quimica.gif" alt="ciencias naturales" id="img-chem">
            </div>
        </div>
    </section>
    <footer>
        <div class="menu">
            <ul>
                <li><a href="../home/home.html">Home</a></li>
                <li><a href="../formularios/formularioCiencias.jsp">Ciencias Naturales</a></li>
                <li><a href="../formularios/formularioQuimica.jsp">Quimica y Biologia</a></li>
                <li><a href="../formularios/formularioProgramacion.jsp">Programacion</a></li>
                <li><a href="../referencias/referencias.html">Referencias</a></li>
                <li><a href="../contactenos/contactenos.html">Contactanos</a></li>
            </ul>
        </div>
        <p>©2023</p>
        <a href="../login/login.jsp" class="logout">Logout</a>
    </footer>
</body>
</html>