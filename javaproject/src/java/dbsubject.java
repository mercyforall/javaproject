/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author Freeware Sys
 */
@WebServlet(urlPatterns = {"/dbsubject"})
public class dbsubject extends HttpServlet {

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
    {
        try{
              PrintWriter out=response.getWriter();
              response.setContentType("text/html");
              Class.forName("org.gjt.mm.mysql.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
              PreparedStatement stmt;
              stmt=con.prepareStatement("Insert into Subjects values('Fullset1','fulllength1','all1','12','15')");
              stmt.executeUpdate();
              stmt=con.prepareStatement("Insert into Subjects values('Fullset2','fulllength2','all2','12','15')");
              stmt.executeUpdate();
              stmt=con.prepareStatement("Insert into Subjects values('Fullset3','fulllength3','all3','12','15')");
              stmt.executeUpdate();
              stmt=con.prepareStatement("Insert into Subjects values('Fullset4','fulllength4','all4','12','15')");
              stmt.executeUpdate();
              stmt=con.prepareStatement("insert into Subjects values('Fullset5','fulllength5','all5','12','15')");
              stmt.executeUpdate();
              out.write("Done");
        }catch(Exception ee){}
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
        processRequest(request, response);
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
        processRequest(request, response);
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
