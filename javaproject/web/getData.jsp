<%-- 
    Document   : getData
    Created on : May 6, 2017, 12:30:40 PM
    Author     : Freeware Sys
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate Campus</title>
    </head>
    <body>
        <%
    String RollNo=request.getParameter("Rollno");
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
    PreparedStatement stmt=con.prepareStatement("Select * from students where RollNo=? ");
    stmt.setString(1,RollNo);
    ResultSet rs=stmt.executeQuery();
    String ans="";
    if(rs.next())
    {
        ans=ans+rs.getString(1)+"#";
        ans=ans+rs.getString(2)+"#";
        ans=ans+rs.getString(3)+"#";
        ans=ans+rs.getString(4)+"#";
        ans=ans+rs.getString(5)+"#";
        ans=ans+rs.getString(6)+"#";
        
    }
    out.write(ans);
%>
    </body>
</html>
