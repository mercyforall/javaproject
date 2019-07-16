<%-- 
    Document   : Student
    Created on : May 5, 2017, 12:47:32 PM
    Author     : Freeware Sys
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate Campus</title>
         <script>
            var xmlhttp;
            function f1()
            {
                rollno=document.getElementById("s1").value;
                xmlhttp=new XMLHttpRequest();
                xmlhttp.onreadystatechange=show;
                xmlhttp.open("GET","getData.jsp?rollno="+rollno,true);
                xmlhttp.send(null);
            }
            function show()
            {
                 if(xmlhttp.readyState==4 && xmlhttp.status==200)
                {
                    ans=xmlhttp.responseText.trim();
                    arr=ans.split("#");
                    document.getElementById("d1").innerHTML=arr[1];
                    document.getElementById("d2").innerHTML=arr[2];
                    document.getElementById("d3").innerHTML=arr[3];
                    document.getElementById("d4").innerHTML=arr[4];
                    document.getElementById("d5").innerHTML=arr[5];
                }
            }
        </script>
       <style>
            table{
                    width:100%;    
            } 
            #menu_tab{
			background:silver;
			height:50px;
                        padding: 0px;
			margin:0px;
		}
                
                h1{
                    background:green;
                    margin: 0;   
                    padding:0;
                    color:white;
                }
                
        ul.menu{
		list-style:none;
		padding:0;
		margin:0;
	}
	ul.menu li {
				float:left;
				background:green;
				line-height:40px;
				text-align:center;
				border:1px solid white;
				height:50px;
				width:131.5px;
				position:relative;
		}
	ul.menu li:hover{
						background:blue;
						
				}
	ul.menu li a{
			text-decoration:none;	
			 color:white;
			display:block; 
	}
	ul.menu ul{
		  display:none;
		
	}
	ul.menu li:hover > ul{
					display:block;
	}
	ul.menu ul ul{
				margin-left:150px;
				position:absolute;
				top:0;
	}
        h2{
            background: green;
            color:white;
            margin:0px;
            padding:2px 0px 0px 0px;
        }
        img{
            margin:5px 0px 0px 0px;
            padding: auto;
        }
        </style>
    </head>
    <body bgcolor="lightgreen">
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
        %>
       <h1><marquee> GATE CAMPUS  </marquee></h1>
         <div id="img">
         <img src="ram6.jpg" width="100%" height="200px">
         <br clear="all">
         </div>
         <div id="menu_tab">                                     
                    <ul class= "menu" >                                                                               
                         <li><a href="index.jsp" class="nav">Home</a></li>
                         <li><a href="aboutus.jsp" class="nav">About us</a></li>
                         <li><a href="ies.jsp" class="nav">IES</a></li>
                         <li><a href="gate.jsp" class="nav">GATE</a></li>
		         <li><a href="psu.jsp" class="nav"> PSU </a></li>
		         <li><a href="course.jsp" class="nav">Course</a></li>
                         <li><a href="online.jsp" class="nav"> Online Examination </a></li>
                         <li><a href="register.jsp" class="nav"> Admission </a></li>
                         <li><a href="login.jsp" class="nav"> Login </a></li>
                         <li><a href="feestructure.jsp" class="nav"> Fee Structure </a></li>
                    </ul>
         
        </div> 
         <hr>
          <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         
         <hr>
         <form method="post">
             <table align="center">
                 <tr><td>Roll No:</td><td><select onchange="f1()" id="s1" name="s1">
                     <%
                             PreparedStatement stmt;
                             stmt = con.prepareStatement("Select * from users where status='N'"); 
                             ResultSet rs;
                             rs = stmt.executeQuery();
                             while (rs.next()) 
                             {
                             out.write("<option>"+rs.getString(1)+"</option>");
                             }
                     %>
                         </select></td></tr>
                 <tr><td>Name:</td><td><div id='d1'></div></td></tr>
                 <tr><td>Father Name:</td><td><div id='d2'></div></td></tr>
                 <tr><td>Semester:</td><td><div id='d3'></div></td></tr>
                 <tr><td>Email:</td><td><div id='d4'></div></td></tr>
                 <tr><td>Mobile:</td><td><div id='d5'></div></td></tr>
                 <tr><td></td><td><input type="Submit" name="b1" id="b1" value="Verify"></td></tr>
             </table>
         </form>
              <%
              String s=request.getParameter("b1");
              if(s!=null && s.equals("Verify"))
              {
                  stmt=con.prepareStatement("update users set status='Y' where ulogin=?");
                  stmt.setString(1,request.getParameter("s1"));
                  stmt.executeUpdate();
              }
             %>
         <hr>
         <table align=center>
             <tr><th>Roll No.</th><th> Name</th><th>Father Name</th><th>Semester</th><th>Email</th><th>Mobile</th></tr>
         <%
            stmt = con.prepareStatement("Select * from students");
           rs = stmt.executeQuery();
           while (rs.next()) 
            {
                out.write("<tr>");
                out.write("<td>" + rs.getString(1) + "</td>");
                out.write("<td>" + rs.getString(2) + "</td>");
                out.write("<td>" + rs.getString(3) + "</td>");
                out.write("<td>" + rs.getString(4) + "</td>");
                out.write("<td>" + rs.getString(5) + "</td>");
                out.write("<td>" + rs.getString(6) + "</td>");
                out.write("</tr>");
            }
          %>
         </table>
         <hr>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    </body>
</html>
