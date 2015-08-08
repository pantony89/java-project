/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Database;
import com.doctor;

/**
 *
 * @author c0633176
 */
@WebServlet(name = "docReg", urlPatterns = {"/docReg"})
public class docReg extends HttpServlet {
    Database db=new Database();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet docReg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet docReg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String docFname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String email=request.getParameter("email");
          String Docid=request.getParameter("Docid");
          String pass=request.getParameter("pass");
          String repass=request.getParameter("repass");
          String spec=request.getParameter("spec");
          String gender=request.getParameter("gender");
   if(docFname!=null &&lname!=null && email!=null && email!=null&& Docid!=null && pass!=null && spec!=null && gender!=null){
       if(pass.equals(repass)){
       doctor d=new doctor(docFname,lname,email,Docid,pass,spec,gender);
       db.insertDoc(d);
       request.getRequestDispatcher("main.html").forward(request, response);
       } 
       else{
    request.setAttribute("errorMessage", "you left some field ");
                request.getRequestDispatcher("doctorReg.jsp").forward(request, response);}
   
   }
   else{
    request.setAttribute("errorMessage", "password Not match ");
                request.getRequestDispatcher("doctorReg.jsp").forward(request, response);
   }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
