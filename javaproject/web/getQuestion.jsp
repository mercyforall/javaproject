<%-- 
    Document   : getQuestion
    Created on : May 8, 2017, 9:39:02 AM
    Author     : Freeware Sys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate campus</title>
    </head>
    <body>
            <%
    String q=request.getParameter("q");
    int c=Integer.parseInt(session.getAttribute("INDEX")+"");
    if(q.equals("P")) c--;
    if(q.equals("N")) c++;
    if(c<0) c=0;
    if(c>=5) c=4;
    session.setAttribute("INDEX",c);
    String[] question=(String[])session.getAttribute("QUESTIONS");
    String[] option1=(String[])session.getAttribute("OP1");
    String[] option2=(String[])session.getAttribute("OP2");
    String[] option3=(String[])session.getAttribute("OP3");
    String[] option4=(String[])session.getAttribute("OP4");
    int[] uans=(int[])session.getAttribute("UANS");
    String ans="";
    ans=ans+question[c]+"#";
    ans=ans+option1[c]+"#";
    ans=ans+option2[c]+"#";
    ans=ans+option3[c]+"#";
    ans=ans+option4[c]+"#";
    ans=ans+c+"#";
   ans=ans+uans[c]+"#";
    out.write(ans);
%>
    </body>
</html>
