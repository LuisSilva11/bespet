<%-- 
    Document   : Producto
    Created on : 21/09/2022, 05:56:28 PM
    Author     : DIEGO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="image/pata.png">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
         <link rel="stylesheet" href="sweetalert2.min.css">
        <script src="sweetalert2.min.js"></script>
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <title>Productos</title>
    </head>
    <body>

        <%@include file="navadmin.jsp"%>
        <section class="home-section">
            <br>
            <div class="container">
            <h1> <b>Administrador</b></h1>
            <p>Inicio >> Productos</p>
            </div>
            <br>
            <div class="container">
                
                <h1 class="title"><b>Productos</b></h1>

                <% if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}     
                <% } else {%>
                ${mensajeExito}
                <%}%>

                <a class="btn-new" href="registrarProducto.jsp">Registrar</a><br>


                <form method="post" action="Producto">
                    <table id="example" class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>img</th>
                                <th>Estado</th>
                                <th>herramientas</th>



                            </tr>
                        </thead>
                        <%
                            ProductoVO prodVO = new ProductoVO();
                            ProductoDAO prodDAO = new ProductoDAO();
                            ArrayList<ProductoVO> listaProd = prodDAO.listar();
                            for (int i = 0; i < listaProd.size(); i++) {

                                prodVO = listaProd.get(i);


                        %>

                        <tr>
                        <form method="post" action="Producto" style="">
                            <td><%=prodVO.getId_Producto()%></td>

                            <td><%=prodVO.getNombre()%></td>
                            <td><%=prodVO.getPrecio()%></td>
                            <td><%=prodVO.getImg()%></td>
                            <td><%=prodVO.getEstado()%></td>
                            <td><a class="btn-update" href="Producto?opcion=3&id_Producto=<%= prodVO.getId_Producto()%>">Editar</a>
                                <a class="btn-delete" href="Producto?opcion=4&id_Producto=<%= prodVO.getId_Producto()%>">Eliminar</a></td>




                        </form>





                        </tr>


                        <%}%>

                    </table>

                </form>
            </div>

        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script src="js/validaciones.js" type="text/javascript"></script>
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
