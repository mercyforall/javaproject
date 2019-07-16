<%-- 
    Document   : ContactUs
    Created on : May 4, 2017, 11:17:34 AM
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
    width:500px;
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
    padding: 7px 40px 7px 40px;  
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
          <%
            try{
            String s = request.getParameter("b1");
            if (s != null && s.equals("Submit")) 
            {
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
            PreparedStatement stmt=con.prepareStatement("Insert into Contactus values(?,?,?,?,?,?,?)");
                stmt.setString(1, request.getParameter("t1"));
                stmt.setString(2, request.getParameter("t2"));
                stmt.setString(3, request.getParameter("t3"));
                stmt.setString(4, request.getParameter("t4"));
                stmt.setString(5, request.getParameter("t5"));
                stmt.setString(6, request.getParameter("t6"));
                stmt.setString(7, request.getParameter("t7"));
                stmt.executeUpdate();
            }
            }catch(Exception ee)
                    {
                        System.out.print(ee);
                    }
        %>
         <hr>  
    <center>
    <div class="loginform">  
    <h3 class="formheading">Contact Us Details</h3>  
    <form method="post" >  
    <table>  
    <tr><td>Full Name*:</td><td><input  type="text" name="t1" id="t1" placeholder="Full Name"/></td></tr>  
    <tr><td>Email*:</td><td><input type="email" name="t2" id="t2" placeholder="Email"/></td></tr> 
    <tr><td>Mobile No*:</td><td><input type="text" name="t3" id="t3" placeholder="Mobile no"/></td></tr>  
    <tr><td>Phone No:</td><td><input type="text" name="t4" id="t4" placeholder="Phone No"/></td></tr> 
    <tr><td>Gender*:</td><td><select  name="t5" id="t5">
    <option value="Male" >male</option>
    <option value="Female">Female</option>
    </select> 
    </td></tr>  
    <tr><td>Stream*:</td><td><select  name="t6" id="t6">
    <option value="Mechanical engineering" width="100px">Mechanical engineering</option>
    <option value="Computer Science Engineering">Computer Science Engineering</option>
    <option value="Information Technology Engineering">Information Technology Engineering</option>
    <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
    </select> 
    </td></tr>  
    <tr><td>Query*:</td><td><textarea rows="5" cols="40" name="t7" id="t7">  
     </textarea>  </td></tr>
    <tr><td colspan="2" style="text-align:center"><input class="sub" type="submit" value="Submit" name="b1"/></td></tr>  
    </table>  
    </form>  
    </div> 
    </center>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    </body>
    </div>
    
</html>
