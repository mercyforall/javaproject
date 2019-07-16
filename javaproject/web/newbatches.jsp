<%-- 
    Document   : newbatches
    Created on : May 4, 2017, 11:21:20 AM
    Author     : Freeware Sys
--%>

<%@page  import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
             Object a=session.getAttribute("VALID");
                 if(a == null)
                     {
                           response.sendRedirect("index.jsp");
                     }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
    </body>
</html>
