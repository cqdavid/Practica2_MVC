package com.emergentes.controladores;

import com.emergentes.modelo.inscripcion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletInscripcion", urlPatterns = {"/ServletInscripcion"})
public class ServletInscripcion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String[] curso = request.getParameterValues("curso");
        
        inscripcion obj1 = new inscripcion();
        obj1.setNombre(nombre);
        obj1.setApellidos(apellidos);
        obj1.setCurso(curso);
        
        request.setAttribute("inscrip", obj1);
        request.getRequestDispatcher("salidaInscripcion.jsp").forward(request, response);
        
    }
}
