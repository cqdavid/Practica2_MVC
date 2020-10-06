<%@page import="com.emergentes.modelo.inscripcion" %>
<%@page import="com.emergentes.modelo.registro" %>
<%@page import="com.emergentes.modelo.productos" %>
<%@page import="com.emergentes.modelo.libros" %>
<%
if (session.getAttribute("listas")== null){
        ArrayList<inscripcion> items = new ArrayList<inscripcion>();      
        session.setAttribute("listas", items);
}
ArrayList<inscripcion> lista = (ArrayList<inscripcion>) session.getAttribute("listas");

if (session.getAttribute("listax")== null){
        ArrayList<registro> item = new ArrayList<registro>();      
        session.setAttribute("listax", item);
}
ArrayList<registro> listay = (ArrayList<registro>) session.getAttribute("listax");

if (session.getAttribute("listaa")== null){
        ArrayList<productos> itema = new ArrayList<productos>();      
        session.setAttribute("listaa", itema);
}
ArrayList<productos> listab = (ArrayList<productos>) session.getAttribute("listaa");

if (session.getAttribute("listam")== null){
        ArrayList<libros> itemm = new ArrayList<libros>();      
        session.setAttribute("listam", itemm);
}
ArrayList<libros> listan = (ArrayList<libros>) session.getAttribute("listam");
%>

<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Formularios</h1></center>
    <br>
    <h3>Univ. DAVID CARANI QUISPE</h3>
    <h3>C.I.  6001668 L.P.</h3>
    <h3>Tecnologias emergentes II</h3>
    <h2>PRACTICA 2</h2>
    <br>
        <ul>
            <li><a href="inscripcion.jsp">Inscripcion en Curso</a></li>
            <li><a href="registro.jsp">Registro de Usuarios</a></li>
            <li><a href="productos.jsp">Inscripcion de Productos</a></li>
            <li><a href="libros.jsp">Registro de Libros</a></li>
        </ul>
        
        
    </body>
</html>