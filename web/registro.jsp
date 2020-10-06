<%@page import="com.emergentes.modelo.registro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro Usuarios</h1>
        
        <form action="ServletRegistro" method="POST">
         <table>
            <tr>
                <td>Nombre </td>
                <td><input type="text" name="nombre" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Apellidos </td>
                <td><input type="text" name="apellidos" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Correo Electronico </td>
                <td><input type="text" name="correo" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td><input type="password" name="password" value="" size="10"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar" ></td>
            </tr>
        </table>
        </form>
    </body>
</html>