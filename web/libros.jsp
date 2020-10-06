<%@page import="com.emergentes.modelo.libros" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>
        <form action= "ServletLibros" method="POST">
         <table>
            <tr>
                <td>Titulo </td>
                <td><input type="text" name="titulo" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Autor </td>
                <td><input type="text" name="autor" value="" size="50" ></td>
            </tr>
            <tr>
                <td>Resumen </td>
                <td><textarea name="resumen" rows="10" cols="50"></textarea></td>
            </tr>
            <tr>
                <td>Medio </td>
                <td>
                <label>Fisico</label>
		<input type="checkbox" name="medio" value="Fisico" size="10">
		<label>Magnetico</label>
		<input type="checkbox" name="medio" value="Magnetico" size="10">
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
