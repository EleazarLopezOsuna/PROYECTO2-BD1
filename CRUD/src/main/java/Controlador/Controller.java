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

/**
 *
 * @author jared
 */
public class Controller extends HttpServlet {
    String direcciones[] = {
        "index.jsp",                    //0
        "Vistas/index.jsp",             //1
        "Vistas/Apertura.jsp",          //2
        "Vistas/Departamento.jsp",      //3
        "Vistas/Direccion.jsp",         //4
        "Vistas/Escuela.jsp",           //5
        "Vistas/Establecimiento.jsp",   //6
        "Vistas/Estado.jsp",            //7
        "Vistas/Estatuto.jsp",          //8
        "Vistas/Genero.jsp",            //9
        "Vistas/Horario.jsp",           //10
        "Vistas/Lengua.jsp",            //11
        "Vistas/Municipio.jsp",         //12
        "Vistas/Nivel.jsp",             //13
        "Vistas/Role.jsp",              //14
        "Vistas/Telefono.jsp",          //15
        "Vistas/Ubicacion.jsp"          //16
    };
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ArrayList<Object> resultado;
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
        if(action.equals("Login")){
            String usuario = request.getParameter("txtUsuario");
            String password = request.getParameter("txtPassword");
            sql = "SELECT IF((SELECT COUNT(*) FROM Login WHERE usuario = '" + usuario + "' AND "
                    + "password = '" + password + "') > 0, 1, 0) AS Verificacion";
            try {
                con = cn.getConnection();
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                rs.next();
                if(rs.getInt("Verificacion") == 1){
                    acceso = direcciones[1];
                }else{
                    acceso = direcciones[0];
                }
            } catch (SQLException e) {
            
            }
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
