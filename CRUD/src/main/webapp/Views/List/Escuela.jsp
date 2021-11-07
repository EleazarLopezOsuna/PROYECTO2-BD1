<%-- 
    Document   : escuela
    Created on : Nov 5, 2021, 8:56:59 PM
    Author     : jared
--%>

<%@page import="Modelo.Escuela"%>
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
                    <h4>Escuelas</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <form action="Controller">
                        <input class="form-control" type="text" name="municipio" value="" required placeholder="Municipio">
                        <input class="form-control" type="text" name="ubicacion" value="" required placeholder="Ubicacion">
                        <input class="form-control" type="text" name="nivel" value="" required placeholder="Nivel">
                        <input class="form-control" type="text" name="horario" value="" required placeholder="Horario">
                        <input class="form-control" type="text" name="role" value="" required placeholder="Role">
                        <input class="form-control" type="text" name="estatuto" value="" required placeholder="Estatuto">
                        <input class="form-control" type="text" name="genero" value="" required placeholder="Genero">
                        <input class="form-control" type="text" name="lengua" value="" required placeholder="Lengua">
                        <input class="form-control" type="text" name="apertura" value="" required placeholder="Apertura">
                        <input class="form-control" type="text" name="estado" value="" required placeholder="Estado">
                        <input class="form-control" type="text" name="escuela" value="" required placeholder="Escuela">
                        <input class="btn btn-primary form-control" type="submit" name="accion" value="Agregar">
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
                                <th class="text-center">Municipio</th>
                                <th class="text-center">Ubicacion</th>
                                <th class="text-center">Nivel</th>
                                <th class="text-center">Horario</th>
                                <th class="text-center">Role</th>
                                <th class="text-center">Estatuto</th>
                                <th class="text-center">Genero</th>
                                <th class="text-center">Lengua</th>
                                <th class="text-center">Apertura</th>
                                <th class="text-center">Estado</th>
                                <th class="text-center">Escuela</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Escuela> resultados = (ArrayList<Escuela>) request.getSession().getAttribute("resultado");
                                for (Escuela escuela : resultados) {
                            %>
                            <form action="Controller">
                                <tr>
                                    <th><input class="form-control" type="text" value="<%= escuela.getId()%>" disabled></th>
                                    <input class="form-control" type="hidden" name="codigo" value="<%= escuela.getId()%>">
                                    <th><input class="form-control" type="text" name="municipio" value="<%= escuela.getMunicipio()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="ubicacion" value="<%= escuela.getUbicacion()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="nivel" value="<%= escuela.getNivel()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="horario" value="<%= escuela.getHorario()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="role" value="<%= escuela.getRole()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="estatuto" value="<%= escuela.getEstatuto()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="genero" value="<%= escuela.getGenero()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="lengua" value="<%= escuela.getLengua()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="apertura" value="<%= escuela.getApertura()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="estado" value="<%= escuela.getEstado()%>" disabled></th>
                                    <th><input class="form-control" type="text" name="escuela" value="<%= escuela.getEscuela()%>" required></th>
                                    <th><input class="btn btn-primary form-control" type="submit" name="accion" value="Editar"></th>
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
