<%-- 
    Document   : estado
    Created on : Nov 5, 2021, 8:57:11 PM
    Author     : jared
--%>

<%@page import="Modelo.Estado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap_cyborg.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Apertura">Ver Aperturas</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Departamento">Ver Departamentos</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Direccion">Ver Direcciones</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Escuela">Ver Escuelas</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Establecimiento">Ver Establecimientos</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Estado">Ver Estados</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Genero">Ver Generos</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Horario">Ver Horarios</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Lengua">Ver Lenguas</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Municipio">Ver Municipios</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Nivel">Ver Niveles</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Role">Ver Roles</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Telefono">Ver Telefonos</a>
                </td>
                <td>
                    <a class="btn btn-primary form-control" href="Controller?accion=Ubicacion">Ver Ubicaciones</a>
                </td>
            </tr>
        </table>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <h4>Estados</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <form action="Controller">
                        <input class="form-control" type="text" name="nombre" value="" required placeholder="Nombre Estado">
                        <input class="btn btn-primary form-control" type="submit" name="accion" value="Agregar Estado">
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center">No.</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Estado> resultados = (ArrayList<Estado>) request.getSession().getAttribute("resultado");
                                for (Estado estado : resultados) {
                            %>
                            <form action="Controller">
                                <tr>
                                    <th><input class="form-control" type="text" value="<%= estado.getCodigo()%>" disabled></th>
                                    <input class="form-control" type="hidden" name="codigo" value="<%= estado.getCodigo()%>">
                                    <th><input class="form-control" type="text" name="nombre" value="<%= estado.getNombre()%>" required></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Editar Estado"></th>
                                </tr>
                            </form>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
