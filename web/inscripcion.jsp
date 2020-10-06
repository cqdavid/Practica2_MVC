<%@page import="com.emergentes.modelo.inscripcion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>Inscripcion en Curso</h1>
        <p></p>
        <form action="ServletInscripcion" method="POST">
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
                <td>Curso </td>
                <td>
            <select name="curso">
                    <option>Programacion </option>
                    <option>Base de Datos</option>
                    <option>Tec.Emergentes</option>
                    <option>Adm.Servidores</option>
            </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar" ></td>
            </tr>
        </table>
        </form>
    </body>
</html>