<%@page import="com.emergentes.modelo.productos" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de productos</h1>
        
        <form action= "ServletProducto" method="POST">
         <table>
            <tr>
                <td>Producto </td>
                <td><input type="text" name="producto" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Categoria </td>
                <td>
                <select name="categoria">
                    <option>Primera </option>
                    <option>Segunda</option>
                    <option>Tercera</option>
                    <option>Cuarta</option>
                </select>
                </td>
            </tr>
            <tr>
                <td>Existencia </td>
                <td><input type="text" name="existencia" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Precio </td>
                <td><input type="text" name="precio" value="" size="50" ></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar" ></td>
            </tr>
        </table>
        </form>
    </body>
</html>