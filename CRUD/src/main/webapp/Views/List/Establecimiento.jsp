<%-- 
    Document   : establecimiento
    Created on : Nov 5, 2021, 8:57:05 PM
    Author     : jared
--%>

<%@page import="Modelo.Establecimiento"%>
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm">
                    <h4>Aperturas</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <form action="Controller">
                        <input class="form-control" type="number" name="escuela" value="" required placeholder="Codigo Escuela">
                        <input class="form-control" type="text" name="codigo" value="" required placeholder="Codigo Establecimiento">
                        <input class="form-control" type="text" name="establecimiento" value="" required placeholder="Nombre Establecimiento">
                        <input class="form-control" type="number" name="latlones_2" value="" required placeholder="latlones_2">
                        <input class="form-control" type="number" name="latlones_3" value="" required placeholder="latlones_3">
                        <input class="form-control" type="number" name="x_geo" value="" required placeholder="Posicion en X">
                        <input class="form-control" type="number" name="y_geo" value="" required placeholder="Posicion en Y">
                        <input class="btn btn-primary form-control" type="submit" name="accion" value="Agregar Establecimiento">
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
                                <th class="text-center">Escuela</th>
                                <th class="text-center">Establecimiento</th>
                                <th class="text-center">Latlones_2</th>
                                <th class="text-center">Latlones_3</th>
                                <th class="text-center">Posicion X</th>
                                <th class="text-center">Posicion Y</th>
                                <th class="text-center">Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Establecimiento> resultados = (ArrayList<Establecimiento>) request.getSession().getAttribute("resultado");
                                for (Establecimiento establecimiento : resultados) {
                            %>
                            <form action="Controller">
                                <tr>
                                    <th><input class="form-control" type="text" value="<%= establecimiento.getId()%>" disabled></th>
                                    <input class="form-control" type="hidden" name="codigo" value="<%= establecimiento.getId()%>">
                                    <th><input class="form-control" type="text" name="escuela" value="<%= establecimiento.getEscuela()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="establecimiento" value="<%= establecimiento.getEstablecimiento()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="latlones_2" value="<%= establecimiento.getLatlones_2()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="latlones_3" value="<%= establecimiento.getLatlones_3()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="x_geo" value="<%= establecimiento.getX_geo()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="y_geo" value="<%= establecimiento.getY_geo()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="nombre" value="<%= establecimiento.getNombre()%>" required></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Editar Establecimiento"></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Borrar Establecimiento"></th>
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

