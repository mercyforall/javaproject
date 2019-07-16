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
@WebServlet(urlPatterns = {"/db"})
public class db extends HttpServlet {

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
                    PreparedStatement stmt;
                    Class.forName("org.gjt.mm.mysql.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
                   /*stmt=con.prepareStatement("Create database Onlineexam");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("use Onlineexam");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("create table users(ulogin varchar(20),upassword varchar(20),utype varchar(20),status varchar(20))");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("create table Subjects(scode varchar(20),sname varchar(20),topic varchar(20),totalquestion int, totalmarks int)");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("Create Table questions (questionId int,scode varchar(20),question varchar(500),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(20),marks int)");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("create table students(RollNo int,Name varchar(50),Fname varchar(50),Semester int,email varchar(50),mobile varchar(20))");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("create table exams(Examid int,ExamDate date, RollNo varchar(20),SubjectCode varchar(20),SubjectName varchar(20),TotalQuestion int, MaximumMarks int,Marks int)");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("create table teachers(TeachersEmail varchar(20),Name varchar(20),Mobile varchar(20),Department varchar(20))");
                   stmt.executeUpdate();
                   stmt=con.prepareStatement("INSERT INTO users VALUES('admin','admin','admin','Y')");
                   stmt.executeUpdate();*/
                   stmt=con.prepareStatement("create table Contactus(name varchar(50),email varchar(50),mobileno varchar(20),phoneno varchar(20),gender varchar(20),stream varchar(100),query varchar(500))");
                   stmt.executeUpdate();
                    out.write("<h1>Done</h1>");
            }catch(Exception ee)
                 {
                    System.out.println(ee);
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
