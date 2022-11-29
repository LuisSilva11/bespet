package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.ProductoVO;
import ModeloDAO.ProductoDAO;
import java.util.ArrayList;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"image/pata.png\">\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"image/pata.png\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Bespet</title>\n");
      out.write("        <!-- font awesome cdn link  -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("\n");
      out.write("        <!-- custom css file link  -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- header section starts  -->\n");
      out.write("\n");
      out.write("        <header class=\"header\">\n");
      out.write("\n");
      out.write("            <a href=\"#\" class=\"logo\"> <i class=\"fas fa-paw\"></i> Bespet </a>\n");
      out.write("\n");
      out.write("            <nav class=\"navbar\">\n");
      out.write("                <a href=\"#home\">Inicio</a>\n");
      out.write("                <a href=\"#about\">Nosotros</a>\n");
      out.write("                <a href=\"#shop\">Modulos</a>\n");
      out.write("                <a href=\"#services\">Beneficios</a>\n");
      out.write("                <a href=\"#contact\">Contacto</a>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <div class=\"icons\">\n");
      out.write("                <div class=\"fas fa-bars\" id=\"menu-btn\"></div>\n");
      out.write("\n");
      out.write("                <div class=\"fas fa-user\" id=\"login-btn\"></div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <form method=\"post\" action=\"Usuario\" class=\"login-form\">\n");
      out.write("                <h3>sign in</h3>\n");
      out.write("                <input type=\"text\" name=\"Correo\" placeholder=\"Ingresa tu correo\" id=\"\" class=\"box\">\n");
      out.write("                <input type=\"password\" name=\"textClave\" placeholder=\"Ingresa tu contraseña\" id=\"\" class=\"box\">\n");
      out.write("                <div class=\"remember\">\n");
      out.write("                    <input type=\"checkbox\" name=\"\" id=\"remember-me\">\n");
      out.write("                    <label for=\"remember-me\">Recordarme</label>\n");
      out.write("                </div>\n");
      out.write("                <button class=\"btn btn-secondary btn-sm\">Iniciar</button> \n");
      out.write("                <input type=\"hidden\" value=\"4\" name=\"opcion\" class=\"btn\">\n");
      out.write("\n");
      out.write("                <div class=\"links\">\n");
      out.write("                    <a href=\"recuperarContrasena.jsp\">¿Olvidaste tu contraseña?</a>\n");
      out.write("                    <a href=\"clienteRegistra.jsp\">Registrate</a>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");

         if (request.getAttribute("mensajeError") != null) { 
      out.write("\n");
      out.write("            <div>\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
} else {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <!-- header section ends -->\n");
      out.write("\n");
      out.write("        <!-- home section starts  -->\n");
      out.write("\n");
      out.write("        <section class=\"home\" id=\"home\">\n");
      out.write("\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <h3> <span>Bespet</span> Gestor de la peluquería Canina Titanes Peludos.\n");
      out.write("                </h3>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <img src=\"image/bottom_wave.png\" class=\"wave\" alt=\"\">\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- home section ends -->\n");
      out.write("\n");
      out.write("        <!-- about section starts  -->\n");
      out.write("\n");
      out.write("        <section class=\"about\" id=\"about\">\n");
      out.write("\n");
      out.write("            <div class=\"image\">\n");
      out.write("                <img src=\"image/grupo.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <h3>Acerca <span>de</span></h3>\n");
      out.write("                <p>Bespet es un sistema de información que permitirá la asignación de servicios.</p>\n");
      out.write("                <a href=\"#\" class=\"btn\">ver mas...</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- about section ends -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- shop section starts  -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"shop\" id=\"shop\">\n");
      out.write("\n");
      out.write("            <h1 class=\"heading\"> Nuestros <span> Módulos </span> </h1>\n");
      out.write("\n");
      out.write("            <div class=\"box-container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("\n");
      out.write("                    <div class=\"image\">\n");
      out.write("                        <img src=\"image/usuarios.jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <h3>Usuarios</h3>\n");
      out.write("                        <div class=\"amount\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("\n");
      out.write("                    <div class=\"image\">\n");
      out.write("                        <img src=\"image/servis.jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <h3>Asignación de servicios</h3>\n");
      out.write("                        <div class=\"amount\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("\n");
      out.write("                    <div class=\"image\">\n");
      out.write("                        <img src=\"image/catdog.jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <h3>Mascotas</h3>\n");
      out.write("                        <div class=\"amount\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>-\n");
      out.write("\n");
      out.write("        <!-- shop section ends -->\n");
      out.write("\n");
      out.write("        <!-- services section starts  -->\n");
      out.write("\n");
      out.write("        <section class=\"services\" id=\"services\">\n");
      out.write("\n");
      out.write("            <h1 class=\"heading\"> Nuestros <span>beneficios</span> </h1>\n");
      out.write("\n");
      out.write("            <div class=\"box-container\">\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <i class=\"fas fa-dog\"></i>\n");
      out.write("                    <h3>Seguridad de datos </h3>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <i class=\"fas fa-cat\"></i>\n");
      out.write("                    <h3>Organización de datos</h3>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <i class=\"fas fa-bath\"></i>\n");
      out.write("                    <h3>Persistencia de datos</h3>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <i class=\"fas fa-drumstick-bite\"></i>\n");
      out.write("                    <h3>Reportes</h3>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- services section ends -->\n");
      out.write("\n");
      out.write("        <!-- plan section starts  -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- plan section ends -->\n");
      out.write("\n");
      out.write("        <section class=\"contact\" id=\"contact\">\n");
      out.write("\n");
      out.write("            <div class=\"image\">\n");
      out.write("                <img src=\"image/gatico.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <form action=\"\">\n");
      out.write("                <h3>Contactanos</h3>\n");
      out.write("                <input type=\"text\" placeholder=\"Nombre\" class=\"box\">\n");
      out.write("                <input type=\"email\" placeholder=\"Correo\" class=\"box\">\n");
      out.write("                <input type=\"tumber\" placeholder=\"Numero\" class=\"box\">\n");
      out.write("                <textarea name=\"\" placeholder=\"Mensaje\" id=\"\" cols=\"30\" rows=\"10\"></textarea>\n");
      out.write("                <input type=\"submit\" value=\"Enviar\" class=\"btn\">\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"footer\">\n");
      out.write("\n");
      out.write("            <img src=\"image/top_wave.png\" alt=\"\">\n");
      out.write("\n");
      out.write("            <div class=\"share\">\n");
      out.write("                <a href=\"#\" class=\"btn\"> <i class=\"fab fa-facebook-f\"></i> facebook </a>\n");
      out.write("                <a href=\"#\" class=\"btn\"> <i class=\"fab fa-instagram\"></i> instagram </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"credit\"> created by <span> Bespet </span> </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- custom js file link  -->\n");
      out.write("        <script src=\"js/script.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
