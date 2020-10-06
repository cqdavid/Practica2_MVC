package com.emergentes.controladores;

import com.emergentes.modelo.registro;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletRegistro", urlPatterns = {"/ServletRegistro"})
public class ServletRegistro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
               
        registro obj1 = new registro();
        obj1.setNombre(nombre);
        obj1.setApellidos(apellidos);
        obj1.setCorreo(correo);
        obj1.setPassword(password);
        
        request.setAttribute("regist", obj1);
        request.getRequestDispatcher("salidaRegisto.jsp").forward(request, response);
    }
}
