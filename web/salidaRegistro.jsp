<%@page import="com.emergentes.modelo.registro" %>
<%
    registro reg = (registro) request.getAttribute("regist");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <p>Nombre    : <%=reg.getNombre() %></p>
        <p>Apellidos : <%=reg.getApellidos() %></p>
        <p>Correo Electronico: <%=reg.getCorreo() %></p>
        <p>Contraseña: <%=reg.getPassword() %></p>
        
         <a href="index.jsp">Volver</a>
    </body>
</html>