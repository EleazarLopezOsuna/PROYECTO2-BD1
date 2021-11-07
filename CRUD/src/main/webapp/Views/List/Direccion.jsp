<%-- 
    Document   : direccion
    Created on : Nov 5, 2021, 8:56:52 PM
    Author     : jared
--%>

<%@page import="Modelo.Direccion"%>
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
                    <h4>Direcciones</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <form action="Controller">
                        <input class="form-control" type="text" name="establecimiento" value="" required placeholder="Nombre Establecimiento">
                        <input class="form-control" type="text" name="avenida" value="" required placeholder="Avenida">
                        <input class="form-control" type="text" name="calle" value="" required placeholder="Calle">
                        <input class="form-control" type="text" name="casa" value="" required placeholder="Casa">
                        <input class="form-control" type="text" name="zona" value="" required placeholder="Zona">
                        <input class="form-control" type="text" name="descripcion" value="" required placeholder="Descripcion">
                        <input class="btn btn-primary form-control" type="submit" name="accion" value="Agregar Direccion">
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
                                <th class="text-center">Establecimiento</th>
                                <th class="text-center">Avenida</th>
                                <th class="text-center">Calle</th>
                                <th class="text-center">Casa</th>
                                <th class="text-center">Zona</th>
                                <th class="text-center">Descripcion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Direccion> resultados = (ArrayList<Direccion>) request.getSession().getAttribute("resultado");
                                for (Direccion direccion : resultados) {
                            %>
                            <form action="Controller">
                                <tr>
                                    <th><input class="form-control" type="text" value="<%= direccion.getId()%>" disabled></th>
                                    <input class="form-control" type="hidden" name="codigo" value="<%= direccion.getId()%>">
                                    <th><input class="form-control" type="text" name="establecimiento" value="<%= direccion.getEstablecimiento()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="avenida" value="<%= direccion.getAvenida()%>"></th>
                                    <th><input class="form-control" type="text" name="calle" value="<%= direccion.getCalle()%>"></th>
                                    <th><input class="form-control" type="text" name="casa" value="<%= direccion.getCasa()%>"></th>
                                    <th><input class="form-control" type="text" name="zona" value="<%= direccion.getZona()%>"></th>
                                    <th><input class="form-control" type="text" name="descripcion" value="<%= direccion.getDescripcion()%>"></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Editar Direccion"></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Borrar Direccion"></th>
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
