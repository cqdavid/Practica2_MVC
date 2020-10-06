<%@page import="com.emergentes.modelo.libros" %>
<%
    libros lib = (libros) request.getAttribute("milib");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>
        <p>Titulo    : <%=lib.getTitulo() %></p>
        <p>Autor     : <%=lib.getAutor() %></p>
        <p>Resumen   : <%=lib.getResumen() %></p>
        <p>Medio     :</p>
        <ul>
            <%
            String[] medio = lib.getMedio();
            if (medio != null){
            for (int i = 0; i < medio.length; i++){
            %>
            <li><%= medio[i] %></li>
            <%
            }
            }
            
            %>
        <a href="index.jsp">Volver</a>
    </body>
</html>