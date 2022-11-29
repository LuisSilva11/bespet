<%-- 
    Document   : index
    Created on : 3/09/2022, 07:45:48 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.ProductoVO"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bespet</title>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <!-- header section starts  -->

        <header class="header">

            <a href="#" class="logo"> <i class="fas fa-paw"></i> Bespet </a>

            <nav class="navbar">
                <a href="#home">Inicio</a>
                <a href="#about">Nosotros</a>
                <a href="#shop">Modulos</a>
                <a href="#services">Beneficios</a>
                <a href="#contact">Contacto</a>
            </nav>

            <div class="icons">
                <div class="fas fa-bars" id="menu-btn"></div>

                <div class="fas fa-user" id="login-btn"></div>
            </div>

            <form method="post" action="Usuario" class="login-form">
                <h3>sign in</h3>
                <input type="text" name="Correo" placeholder="Ingresa tu correo" id="" class="box">
                <input type="password" name="textClave" placeholder="Ingresa tu contraseña" id="" class="box">
                <div class="remember">
                    <input type="checkbox" name="" id="remember-me">
                    <label for="remember-me">Recordarme</label>
                </div>
                <button class="btn btn-secondary btn-sm">Iniciar</button> 
                <input type="hidden" value="4" name="opcion" class="btn">

                <div class="links">
                    <a href="recuperarContrasena.jsp">¿Olvidaste tu contraseña?</a>
                    <a href="clienteRegistra.jsp">Registrate</a>
                </div>
            </form>
            <%
         if (request.getAttribute("mensajeError") != null) { %>
            <div>
                ${mensajeError}
            </div>


            <%} else {%>
            ${mensajeExito}
            <%}%>

        </header>

        <!-- header section ends -->

        <!-- home section starts  -->

        <section class="home" id="home">

            <div class="content">
                <h3> <span>Bespet</span> Gestor de la peluquería Canina Titanes Peludos.
                </h3>
            </div>

            <img src="image/bottom_wave.png" class="wave" alt="">

        </section>

        <!-- home section ends -->

        <!-- about section starts  -->

        <section class="about" id="about">

            <div class="image">
                <img src="image/grupo.png" alt="">
            </div>

            <div class="content">
                <h3>Acerca <span>de</span></h3>
                <p>Bespet es un sistema de información que permitirá la asignación de servicios.</p>
                <a href="#" class="btn">ver mas...</a>
            </div>

        </section>

        <!-- about section ends -->


        <!-- shop section starts  -->



        <section class="shop" id="shop">

            <h1 class="heading"> Nuestros <span> Módulos </span> </h1>

            <div class="box-container">


                <div class="box">

                    <div class="image">
                        <img src="image/usuarios.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>Usuarios</h3>
                        <div class="amount"></div>
                    </div>
                </div>

                <div class="box">

                    <div class="image">
                        <img src="image/servis.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>Asignación de servicios</h3>
                        <div class="amount"></div>
                    </div>
                </div>

                <div class="box">

                    <div class="image">
                        <img src="image/catdog.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3>Mascotas</h3>
                        <div class="amount"></div>
                    </div>
                </div>


            </div>

        </section>-

        <!-- shop section ends -->

        <!-- services section starts  -->

        <section class="services" id="services">

            <h1 class="heading"> Nuestros <span>beneficios</span> </h1>

            <div class="box-container">

                <div class="box">
                    <i class="fas fa-dog"></i>
                    <h3>Seguridad de datos </h3>

                </div>

                <div class="box">
                    <i class="fas fa-cat"></i>
                    <h3>Organización de datos</h3>

                </div>

                <div class="box">
                    <i class="fas fa-bath"></i>
                    <h3>Persistencia de datos</h3>

                </div>

                <div class="box">
                    <i class="fas fa-drumstick-bite"></i>
                    <h3>Reportes</h3>

                </div>



            </div>

        </section>

        <!-- services section ends -->

        <!-- plan section starts  -->



        <!-- plan section ends -->

        <section class="contact" id="contact">

            <div class="image">
                <img src="image/gatico.png" alt="">
            </div>

            <form action="">
                <h3>Contactanos</h3>
                <input type="text" placeholder="Nombre" class="box">
                <input type="email" placeholder="Correo" class="box">
                <input type="tumber" placeholder="Numero" class="box">
                <textarea name="" placeholder="Mensaje" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="Enviar" class="btn">
            </form>

        </section>

        <section class="footer">

            <img src="image/top_wave.png" alt="">

            <div class="share">
                <a href="#" class="btn"> <i class="fab fa-facebook-f"></i> facebook </a>
                <a href="#" class="btn"> <i class="fab fa-instagram"></i> instagram </a>
            </div>

            <div class="credit"> created by <span> Bespet </span> </div>

        </section>

        <!-- custom js file link  -->
        <script src="js/script.js"></script>

    </body>
</html>
