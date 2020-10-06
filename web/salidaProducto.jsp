<%@page import="com.emergentes.modelo.productos" %>
<%
    productos pro = (productos) request.getAttribute("produc");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Producto Registrado</h1>
        <p>Nombre    : <%=pro.getProducto() %></p>
        <p>Categoria     :</p>
        <ul>
            <%
            String[] categoria = pro.getCategoria();
            if (categoria != null){
            for (int i = 0; i < categoria.length; i++){
            %>
            <li><%= categoria[i] %></li>
            <%
            }
            }
            
            %>
        </ul>   
         <p>Existencia : <%=pro.getExistencia() %></p>
         <p>Precio     : <%=pro.getPrecio() %></p>
         <br>
       <a href="index.jsp">Volver</a>
    </body>
</html>