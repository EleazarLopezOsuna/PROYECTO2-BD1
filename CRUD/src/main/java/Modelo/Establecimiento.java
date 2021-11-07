/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author jared
 */
public class Establecimiento {
    private String id;
    private String escuela;
    private String nombre;
    private String establecimiento;

    public String getEstablecimiento() {
        return establecimiento;
    }

    public void setEstablecimiento(String establecimiento) {
        this.establecimiento = establecimiento;
    }
    private String latlones_2;
    private String latlones_3;
    private String x_geo;
    private String y_geo;

    public Establecimiento() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEscuela() {
        return escuela;
    }

    public void setEscuela(String escuela) {
        this.escuela = escuela;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLatlones_2() {
        return latlones_2;
    }

    public void setLatlones_2(String latlones_2) {
        this.latlones_2 = latlones_2;
    }

    public String getLatlones_3() {
        return latlones_3;
    }

    public void setLatlones_3(String latlones_3) {
        this.latlones_3 = latlones_3;
    }

    public String getX_geo() {
        return x_geo;
    }

    public void setX_geo(String x_geo) {
        this.x_geo = x_geo;
    }

    public String getY_geo() {
        return y_geo;
    }

    public void setY_geo(String y_geo) {
        this.y_geo = y_geo;
    }
    
}
