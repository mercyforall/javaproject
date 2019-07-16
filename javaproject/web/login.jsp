<%-- 
    Document   : login
    Created on : May 4, 2017, 11:56:01 AM
    Author     : Freeware Sys
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate Campus</title>
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
        .loginform{  
    padding:10px;  
    border:1px solid green;  
    border-radius:10px;  
    width:450px;
    margin-top:10px;  
    }  
    .formheading{  
    background-color:green;  
    color:white;  
    padding:4px;  
    text-align:center;  
    }  
    .sub{  
    background-color:green;  
    padding: 7px 30px 7px 30px;  
    color:white;  
    font-weight:bold;  
    margin-left:10px;  
    border-radius:5px;  
    }  
    .reg{  
    background-color:green;  
    padding: 7px 30px 7px 30px;  
    color:white;  
    font-weight:bold;  
    margin-left:70px;  
    border-radius:5px;  
    }  
        </style>
    </head>
     <div>
    <body bgcolor="lightgreen">
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
          <%
             try{
            String msg="";
            if(request.getParameter("b1")!=null)
            {
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
                PreparedStatement stmt=con.prepareStatement("Select * from users where ulogin=? and upassword=?");
                stmt.setString(1,request.getParameter("t1"));
                stmt.setString(2,request.getParameter("t2"));
                ResultSet rs=stmt.executeQuery();                     
                if(rs.next())
                {
                    Object a= session.getAttribute("VALID");
                    if(a==null)
                    {
                        response.sendRedirect("index.jsp");
                    }
                    String type=rs.getString("utype");
                    if(type.equals("admin"))
                    {
                        response.sendRedirect("admin.jsp");
                    }
                    if(type.equals("Teacher"))
                    {
                        response.sendRedirect("teacher.jsp");
                    }
                    if(type.equals("Student"))
                    {
                        response.sendRedirect("Students.jsp");
                    }
                }
                
                
             }  
            else
            {
                    msg="Invalid Login/Password!!!!!!";
            }
             if(request.getParameter("b2")!=null)
          {
               response.sendRedirect("register.jsp");
          }
            }catch(Exception ee)
            {
                System.out.print(ee);
            }
         
         %>
     <center>
     <div class="loginform">  
     <h3 class="formheading">Login</h3> 
        <form method="post">
            <table align="center">
                <tr><td>Ulogin:</td><td><input type="text" id="t1" name='t1'></td></tr>
                <tr><td>Upassword:</td><td><input type="password" id="t2" name='t2'></td></tr>
                <tr><td></td><td><input type="submit" value="Submit" id="b1" name='b1' class="sub"><input type="submit" value="Register" id="b2" name='b2' class="reg"></td></tr>
               
            </table>
        </form>
        </div> 
    </center>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
        </div>
    </body>
</html>
