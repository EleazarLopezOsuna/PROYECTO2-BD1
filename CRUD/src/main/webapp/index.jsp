<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:55:51 PM
    Author     : jared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap_cyborg.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mx-auto" style="margin-top: 14%">
            <div class="row">
                <div class="col-sm">
                    <form action="Controller">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                    <h4>Iniciar Sesion</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm">
                                    Usuario:
                                    <input class="form-control" type="text" name="txtUsuario" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm">
                                    Password:
                                    <input class="form-control" type="password" name="txtPassword" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm">
                                    <label></label>
                                    <input class="btn btn-primary form-control" type="submit" name="accion" value="Login">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
