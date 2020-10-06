package com.emergentes.controladores;

import com.emergentes.modelo.productos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto"})
public class ServletProducto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String producto = request.getParameter("producto");
        String[] categoria = request.getParameterValues("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        
        productos obj1 = new productos();
        obj1.setProducto(producto);
        obj1.setCategoria(categoria);
        obj1.setExistencia(existencia);
        obj1.setPrecio(precio);
        
        request.setAttribute("produc", obj1);
        request.getRequestDispatcher("salidaProducto.jsp").forward(request, response);
        
    }
}
