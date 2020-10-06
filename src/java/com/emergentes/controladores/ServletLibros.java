package com.emergentes.controladores;

import com.emergentes.modelo.libros;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletLibros", urlPatterns = {"/ServletLibros"})
public class ServletLibros extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String[] medio = request.getParameterValues("medio");
               
        libros obj1 = new libros();
        obj1.setTitulo(titulo);
        obj1.setAutor(autor);
        obj1.setResumen(resumen);
        obj1.setMedio(medio);
        
        request.setAttribute("milib", obj1);
        request.getRequestDispatcher("salidaLibros.jsp").forward(request, response); 
    }
}
