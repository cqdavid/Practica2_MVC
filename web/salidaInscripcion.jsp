<%@page import="com.emergentes.modelo.inscripcion" %>
<%
    inscripcion ins = (inscripcion) request.getAttribute("inscrip");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscripcion</title>
    </head>
    <body>
        <h1>Registro Inscripcion</h1>
        <p>Nombre    : <%=ins.getNombre() %></p>
        <p>Apellidos : <%=ins.getApellidos() %></p>
        <p>Curso     :</p>
        <ul>
           <%
            String[] curso = ins.getCurso();
            if (curso != null){
            for (int i = 0; i < curso.length; i++){
            %>
            <li><%= curso[i] %></li>
            <%
            }
            }
            
            %>
            
        </ul>
            <a href="index.jsp">Volver</a>
    </body>
</html>