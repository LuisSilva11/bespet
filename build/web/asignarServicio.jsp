<%-- 
    Document   : asignarServicio
    Created on : 28/10/2022, 02:06:41 PM
    Author     : DIEGO
--%>

<%@page import="ModeloVO.PeluqueroVO"%>
<%@page import="ModeloDAO.PeluqueroDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.asignarServicioDAO"%>
<%@page import="ModeloVO.asignarServicioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <title>Asignar</title>
    </head>
    <body>
        <%@include file="navadmin.jsp"%>
        <section class="home-section">
            <br>
            <div class="container">
            <h1> <b>Administrador</b></h1>
            <p>Inicio >> Asignar Servicio</p>
            </div>
            <br>
            
            <div class="container">
                <h1 class="title"><b>Asignar Servicio</b></h1><br>


                <% if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}     
                <% } else {%>
                ${mensajeExito}
                <%}%>

                <a class="btn-new" href="asignarServisRegister.jsp">Asignar</a><br>
                <%-- <form method="post" action="asignarServicio">
                 <button class="btn-new" value="0" name="asignar">Asignar</button><br>
                 <input type="hidden" name="opcion" value="6">
             </form>--%>

                <form method="post" action="asignarServicio">
                    <table id="example" class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Peluquero</th>
                                <th>Mascota</th>
                                <th>Servicio</th>
                                <th>Fecha</th>
                                <th>Id Cliente</th>
                                <th>Estado</th>
                                <th>herramientas</th>
                            </tr>
                        </thead>
                        <%
                            asignarServicioVO asiVO = new asignarServicioVO();
                            asignarServicioDAO asiDAO = new asignarServicioDAO();
                            ArrayList<asignarServicioVO> listaAsi = asiDAO.listar();
                            for (int i = 0; i < listaAsi.size(); i++) {

                                asiVO = listaAsi.get(i);


                        %>

                        <tr>
                        <form method="post" action="asignarServicio" style="">
                            <td><%=asiVO.getId_Asignar()%></td>

                            <td><%=asiVO.getId_Peluquero()%></td>
                            <td><%=asiVO.getId_Mascota()%></td>
                            <td><%=asiVO.getId_Servicio()%></td>
                            <td><%=asiVO.getFechaTerminado()%></td>
                            <td><%=asiVO.getIdCliente()%></td>
                            <td><%=asiVO.getEstado()%></td>
                            <td><a class="btn-delete" href="asignarServicio?opcion=3&id_Asignar=<%= asiVO.getId_Asignar()%>">Eliminar</a></td>
                        </form>
                        </tr>
                        <%}%>
                    </table>
                </form>
                    <br>
                <form method="post" action="GenerarPDFasignarServiciosPendientes.jsp" target="_black">
                    <select class="aa" name="peluquero" required>
                        <%
                            PeluqueroDAO peluDAO = new PeluqueroDAO();
                            for (PeluqueroVO peluVO : peluDAO.listar()) {

                        %>
                        <option value="<%=peluVO.getNombre()%>"><%=peluVO.getNombre()%></option>
                        <%}%>
                    </select>
                    <input class="btn-pdf" type="submit" value="Generar pdf">
                </form>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable({
                    language: {
                        url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json'
                    }
                });
            });
        </script>
    </body>
</html>

