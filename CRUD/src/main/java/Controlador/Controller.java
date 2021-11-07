/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Database.Conexion;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;

/**
 *
 * @author jared
 */
public class Controller extends HttpServlet {

    String direcciones[] = {
        "index.jsp", //0
        "Views/index.jsp", //1
        "Views/List/Apertura.jsp", //2
        "Views/List/Departamento.jsp", //3
        "Views/List/Direccion.jsp", //4
        "Views/List/Escuela.jsp", //5
        "Views/List/Establecimiento.jsp", //6
        "Views/List/Estado.jsp", //7
        "Views/List/Estatuto.jsp", //8
        "Views/List/Genero.jsp", //9
        "Views/List/Horario.jsp", //10
        "Views/List/Lengua.jsp", //11
        "Views/List/Municipio.jsp", //12
        "Views/List/Nivel.jsp", //13
        "Views/List/Role.jsp", //14
        "Views/List/Telefono.jsp", //15
        "Views/List/Ubicacion.jsp" //16
    };
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ArrayList<Object> resultado;
    Apertura apertura;
    Departamento departamento;
    Direccion direccion;
    Escuela escuela;
    Establecimiento establecimiento;
    Estado estado;
    Estatuto estatuto;
    Genero genero;
    Horario horario;
    Lengua lengua;
    Municipio municipio;
    Nivel nivel;
    Role role;
    Telefono telefono;
    Ubicacion ubicacion;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        String sql;
        resultado = new ArrayList<>();
        if (action.equals("Login")) {
            String usuario = request.getParameter("txtUsuario");
            String password = request.getParameter("txtPassword");
            sql = "SELECT IF((SELECT COUNT(*) FROM Login WHERE usuario = '" + usuario + "' AND "
                    + "password = '" + password + "') > 0, 1, 0) AS Verificacion";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                rs.next();
                if (rs.getInt("Verificacion") == 1) {
                    acceso = direcciones[1];
                } else {
                    acceso = direcciones[0];
                }
            } catch (SQLException e) {

            }
        } else if (action.equals("Apertura")) {
            obtenerAperturas();
            acceso = direcciones[2];
        } else if (action.equals("Agregar Apertura")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Apertura(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerAperturas();
            } catch (SQLException e) {

            }
            acceso = direcciones[2];
        } else if (action.equals("Editar Apertura")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Apertura SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerAperturas();
            } catch (SQLException e) {

            }
            acceso = direcciones[2];
        } else if (action.equals("Departamento")) {
            obtenerDepartamentos();
            acceso = direcciones[3];
        } else if (action.equals("Direccion")) {
            obtenerDirecciones();
            acceso = direcciones[4];
        } else if (action.equals("Escuela")) {
            obtenerEscuelas();
            acceso = direcciones[5];
        } else if (action.equals("Establecimiento")) {
            obtenerEstablecimientos();
            acceso = direcciones[6];
        } else if (action.equals("Agregar Establecimiento")) {
            String escuela = request.getParameter("escuela");
            String codigo = request.getParameter("codigo");
            String establecimiento = request.getParameter("establecimiento");
            String latlones_2 = request.getParameter("latlones_2");
            String latlones_3 = request.getParameter("latlones_3");
            String x_geo = request.getParameter("x_geo");
            String y_geo = request.getParameter("y_geo");
            sql = "INSERT INTO Establecimiento(escuela, establecimiento, nombre, latlones_2, latlones_3, x_geo, y_geo) VALUES("
                    + "(SELECT id FROM escuela WHERE escuela LIKE '%" + escuela + "%' LIMIT 1), '" + codigo + "', '" + establecimiento + "', '" + latlones_2 + "'"
                    + ", '" + latlones_3 + "', '" + x_geo + "', '" + y_geo + "')";
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstablecimientos();
            } catch (SQLException e) {

            }
            acceso = direcciones[6];
        } else if (action.equals("Editar Establecimiento")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Establecimiento SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstablecimientos();
            } catch (SQLException e) {

            }
            acceso = direcciones[6];
        } else if (action.equals("Borrar Establecimiento")) {
            String codigo = request.getParameter("codigo");
            sql = "DELETE FROM Telefono WHERE establecimiento = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                sql = "DELETE FROM Direccion WHERE establecimiento = " + codigo;
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                sql = "DELETE FROM Establecimiento WHERE id = " + codigo;
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstablecimientos();
            } catch (SQLException e) {

            }
            acceso = direcciones[6];
        } else if (action.equals("Estado")) {
            obtenerEstados();
            acceso = direcciones[7];
        } else if (action.equals("Agregar Estado")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Estado(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstados();
            } catch (SQLException e) {

            }
            acceso = direcciones[7];
        } else if (action.equals("Editar Estado")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Estado SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstados();
            } catch (SQLException e) {

            }
            acceso = direcciones[7];
        } else if (action.equals("Estatuto")) {
            obtenerEstatutos();
            acceso = direcciones[8];
        } else if (action.equals("Agregar Estatuto")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Estatuto(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstatutos();
            } catch (SQLException e) {

            }
            acceso = direcciones[8];
        } else if (action.equals("Editar Estatuto")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Estatuto SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerEstatutos();
            } catch (SQLException e) {

            }
            acceso = direcciones[8];
        } else if (action.equals("Genero")) {
            obtenerGeneros();
            acceso = direcciones[9];
        } else if (action.equals("Agregar Genero")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Genero(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerGeneros();
            } catch (SQLException e) {

            }
            acceso = direcciones[9];
        } else if (action.equals("Editar Genero")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Genero SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerGeneros();
            } catch (SQLException e) {

            }
            acceso = direcciones[9];
        } else if (action.equals("Horario")) {
            obtenerHorarios();
            acceso = direcciones[10];
        } else if (action.equals("Agregar Horario")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Horario(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerHorarios();
            } catch (SQLException e) {

            }
            acceso = direcciones[10];
        } else if (action.equals("Editar Horario")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Horario SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerHorarios();
            } catch (SQLException e) {

            }
            acceso = direcciones[10];
        } else if (action.equals("Lengua")) {
            obtenerLenguas();
            acceso = direcciones[11];
        } else if (action.equals("Agregar Lengua")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Lengua(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerLenguas();
            } catch (SQLException e) {

            }
            acceso = direcciones[11];
        } else if (action.equals("Editar Lengua")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Lengua SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerLenguas();
            } catch (SQLException e) {

            }
            acceso = direcciones[11];
        } else if (action.equals("Municipio")) {
            obtenerMunicipios();
            acceso = direcciones[12];
        } else if (action.equals("Nivel")) {
            obtenerNiveles();
            acceso = direcciones[13];
        } else if (action.equals("Agregar Nivel")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Nivel(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerNiveles();
            } catch (SQLException e) {

            }
            acceso = direcciones[13];
        } else if (action.equals("Editar Nivel")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Nivel SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerNiveles();
            } catch (SQLException e) {

            }
            acceso = direcciones[13];
        } else if (action.equals("Role")) {
            obtenerRoles();
            acceso = direcciones[14];
        } else if (action.equals("Agregar Role")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Role(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerRoles();
            } catch (SQLException e) {

            }
            acceso = direcciones[14];
        } else if (action.equals("Editar Role")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Role SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerRoles();
            } catch (SQLException e) {

            }
            acceso = direcciones[14];
        } else if (action.equals("Telefono")) {
            obtenerTelefonos();
            acceso = direcciones[15];
        } else if (action.equals("Agregar Telefono")) {
            String establecimiento = request.getParameter("establecimiento");
            String telefono = request.getParameter("telefono");
            sql = "INSERT INTO Telefono(establecimiento, telefono) VALUES("
                    + "(SELECT id FROM establecimiento WHERE nombre LIKE '%" + establecimiento + "%' LIMIT 1), '" + telefono + "'"
                    + ")";
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerTelefonos();
            } catch (SQLException e) {

            }
            acceso = direcciones[15];
        } else if (action.equals("Editar Telefono")) {
            String codigo = request.getParameter("codigo");
            String telefono = request.getParameter("telefono");
            sql = "UPDATE Telefono SET telefono = '" + telefono + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerTelefonos();
            } catch (SQLException e) {

            }
            acceso = direcciones[15];
        } else if (action.equals("Borrar Telefono")) {
            String codigo = request.getParameter("codigo");
            sql = "DELETE FROM Telefono WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerTelefonos();
            } catch (SQLException e) {

            }
            acceso = direcciones[15];
        } else if (action.equals("Ubicacion")) {
            obtenerUbicaciones();
            acceso = direcciones[16];
        } else if (action.equals("Agregar Ubicacion")) {
            String nombre = request.getParameter("nombre");
            sql = "INSERT INTO Ubicacion(nombre) VALUES('" + nombre + "')";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerUbicaciones();
            } catch (SQLException e) {

            }
            acceso = direcciones[16];
        } else if (action.equals("Editar Ubicacion")) {
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            sql = "UPDATE Ubicacion SET nombre = '" + nombre + "' WHERE id = " + codigo;
            System.out.println(sql);
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                ps.executeUpdate();
                obtenerUbicaciones();
            } catch (SQLException e) {

            }
            acceso = direcciones[16];
        }
        request.getSession().setAttribute("resultado", resultado);
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    private void obtenerTelefonos() {
        String sql = "SELECT telefono.id, establecimiento.establecimiento, telefono.telefono\n"
                + "FROM telefono, establecimiento\n"
                + "WHERE telefono.establecimiento = establecimiento.id\n"
                + "LIMIT 100;";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                telefono = new Telefono();
                telefono.setCodigo(rs.getString("id"));
                telefono.setEstablecimiento(rs.getString("establecimiento"));
                telefono.setTelefono(rs.getString("telefono"));
                resultado.add(telefono);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerEscuelas() {
        String sql = "SELECT escuela.id, escuela.escuela, municipio.nombre AS municipio, ubicacion.nombre AS ubicacion, nivel.nombre AS nivel,\n"
                + "	horario.nombre AS horario, role.nombre AS role, estatuto.nombre AS estatuto, genero.nombre AS genero,\n"
                + "	lengua.nombre AS lengua, apertura.nombre AS apertura, estado.nombre AS estado\n"
                + "FROM municipio, ubicacion, nivel, horario, role, estatuto, genero, lengua, apertura, estado, escuela\n"
                + "WHERE escuela.municipio = municipio.id AND escuela.ubicacion = ubicacion.id AND escuela.nivel = nivel.id AND\n"
                + "	escuela.horario = horario.id AND escuela.role = role.id AND escuela.estatuto = estatuto.id AND\n"
                + "	escuela.genero = genero.id AND escuela.lengua = lengua.id AND escuela.apertura = apertura.id AND\n"
                + "	escuela.estado = estado.id\n"
                + "LIMIT 100;";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                escuela = new Escuela();
                escuela.setApertura(rs.getString("apertura"));
                escuela.setEscuela(rs.getString("escuela"));
                escuela.setEstado(rs.getString("estado"));
                escuela.setGenero(rs.getString("genero"));
                escuela.setHorario(rs.getString("horario"));
                escuela.setId(rs.getString("id"));
                escuela.setLengua(rs.getString("lengua"));
                escuela.setMunicipio(rs.getString("municipio"));
                escuela.setNivel(rs.getString("nivel"));
                escuela.setRole(rs.getString("role"));
                escuela.setUbicacion(rs.getString("ubicacion"));
                resultado.add(escuela);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerEstablecimientos() {
        String sql = "SELECT establecimiento.id, escuela.escuela, establecimiento.establecimiento, establecimiento.nombre, establecimiento.latlones_2,\n"
                + "	establecimiento.latlones_3, establecimiento.x_geo, establecimiento.y_geo\n"
                + "FROM establecimiento, escuela\n"
                + "WHERE establecimiento.escuela = escuela.id\n"
                + "ORDER BY establecimiento.id DESC\n"
                + "LIMIT 100;";
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                establecimiento = new Establecimiento();
                establecimiento.setEscuela(rs.getString("escuela"));
                establecimiento.setId(rs.getString("id"));
                establecimiento.setEstablecimiento(rs.getString("establecimiento"));
                establecimiento.setLatlones_2(rs.getString("latlones_2"));
                establecimiento.setLatlones_3(rs.getString("latlones_3"));
                establecimiento.setNombre(rs.getString("nombre"));
                establecimiento.setX_geo(rs.getString("x_geo"));
                establecimiento.setY_geo(rs.getString("y_geo"));
                resultado.add(establecimiento);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerMunicipios() {
        String sql = "SELECT municipio.id, departamento.nombre AS departamento, municipio.nombre AS municipio\n"
                + "FROM departamento, municipio\n"
                + "WHERE municipio.departamento = departamento.id;";
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                municipio = new Municipio();
                municipio.setCodigo(rs.getString("id"));
                municipio.setDepartamento(rs.getString("departamento"));
                municipio.setNombre(rs.getString("municipio"));
                resultado.add(municipio);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerAperturas() {
        String sql = "SELECT * FROM Apertura";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                apertura = new Apertura();
                apertura.setCodigo(rs.getString("id"));
                apertura.setNombre(rs.getString("nombre"));
                resultado.add(apertura);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerDepartamentos() {
        String sql = "SELECT * FROM Departamento";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento = new Departamento();
                departamento.setCodigo(rs.getString("id"));
                departamento.setNombre(rs.getString("nombre"));
                resultado.add(departamento);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerDirecciones() {
        String sql = "SELECT direccion.id, establecimiento.establecimiento, avenida, calle, "
                + "casa, zona, descripcion FROM direccion, establecimiento WHERE "
                + "direccion.establecimiento = establecimiento.id LIMIT 100 ORDER BY direccion.id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                direccion = new Direccion();
                direccion.setAvenida(rs.getString("avenida"));
                direccion.setCalle(rs.getString("calle"));
                direccion.setCasa(rs.getString("casa"));
                direccion.setDescripcion(rs.getString("descripcion"));
                direccion.setId(rs.getString("id"));
                direccion.setEstablecimiento(rs.getString("establecimiento"));
                direccion.setZona(rs.getString("zona"));
                resultado.add(direccion);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerEstados() {
        String sql = "SELECT * FROM Estado";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                estado = new Estado();
                estado.setCodigo(rs.getString("id"));
                estado.setNombre(rs.getString("nombre"));
                resultado.add(estado);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerEstatutos() {
        String sql = "SELECT * FROM Estatuto";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                estatuto = new Estatuto();
                estatuto.setCodigo(rs.getString("id"));
                estatuto.setNombre(rs.getString("nombre"));
                resultado.add(estatuto);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerGeneros() {
        String sql = "SELECT * FROM Genero";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                genero = new Genero();
                genero.setCodigo(rs.getString("id"));
                genero.setNombre(rs.getString("nombre"));
                resultado.add(genero);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerHorarios() {
        String sql = "SELECT * FROM Horario";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                horario = new Horario();
                horario.setCodigo(rs.getString("id"));
                horario.setNombre(rs.getString("nombre"));
                resultado.add(horario);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerLenguas() {
        String sql = "SELECT * FROM Lengua";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                lengua = new Lengua();
                lengua.setCodigo(rs.getString("id"));
                lengua.setNombre(rs.getString("nombre"));
                resultado.add(lengua);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerNiveles() {
        String sql = "SELECT * FROM Nivel";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                nivel = new Nivel();
                nivel.setCodigo(rs.getString("id"));
                nivel.setNombre(rs.getString("nombre"));
                resultado.add(nivel);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerRoles() {
        String sql = "SELECT * FROM Role";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                role = new Role();
                role.setCodigo(rs.getString("id"));
                role.setNombre(rs.getString("nombre"));
                resultado.add(role);
            }
        } catch (SQLException e) {

        }
    }

    private void obtenerUbicaciones() {
        String sql = "SELECT * FROM Ubicacion";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ubicacion = new Ubicacion();
                ubicacion.setCodigo(rs.getString("id"));
                ubicacion.setNombre(rs.getString("nombre"));
                resultado.add(ubicacion);
            }
        } catch (SQLException e) {

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
