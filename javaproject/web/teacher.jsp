

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate campus</title>
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
        #ies{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:300px;
			height:550px;
			border:2px solid green;
                        text-decoration: none;        
        }
        #ies ul li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        background: green;
                        margin-top: 25px;
                        text-decoration: none;
                      
        }
        #ies ul li  :hover{
                        color:blue;
                     }
        #ies ul li a{
                        font-family: arial;
                        font-size: 20px;
                        color:white;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
                }
        #iesexam{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:985px;
			height:550px;
			border:2px solid green;
                        background: white;
                }
                #iesexam ol li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        color:black;
                        margin-top: 25px;     
                }
                #iesexam ol li p{
                        font-family: arial;
                        font-size: 20px;
                        color:black;
                        text-decoration: none;
                        line-height: 30px;
                        padding-left: 10px;
                }
        </style>
    </head>
    <body bgcolor="lightgreen">
        <%!
            String getPassword() {
        String pass = "";
        for (int i = 1; i <= 8; i++) {
            int a = (int) (Math.random() * 26 + 65);
            char ch = (char) a;
            pass = pass + ch;
        }
        return pass;
    }
        %>
         <%
            try{
            String s = request.getParameter("b1");
            String pass="";
            if (s != null && s.equals("Save")) 
            {
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
            PreparedStatement stmt=con.prepareStatement("Insert into teachers values(?,?,?,?)");
                stmt.setString(1, request.getParameter("t1"));
                stmt.setString(2, request.getParameter("t2"));
                stmt.setString(3, request.getParameter("t3"));
                stmt.setString(4, request.getParameter("t4"));
                stmt.executeUpdate();
                pass=getPassword();
                stmt = con.prepareStatement("Insert into users values(?,?,'Teacher','y')");
                stmt.setString(1,request.getParameter("t1") );
                stmt.setString(2, pass);
                stmt.executeUpdate();
            }
            }catch(Exception ee)
                    {
                        System.out.print(ee);
                    }
        %>
        <h1><marquee> GATE CAMPUS  </marquee></h1>
         <div id="img">
         <img src="ram6.jpg" width="100%" height="200px">
         <br clear="all">
         </div>
         <hr>
         <div id="menu_tab">                                     
                    <ul class= "menu" >                                                                               
                         <li><a href="index.jsp" class="nav">Home</a></li>
                         <li><a href="aboutus.jsp" class="nav">About us</a></li>
                         <li><a href="testfeatures.jsp" class="nav">Test Feature</a></li>
                         <li><a href="fee.jsp" class="nav">Fee</a></li>
		         <li><a href="freemocktest.jsp" class="nav"> Free MockTest </a></li>
		         <li><a href="feestructure.jsp" class="nav">Fee Structure</a></li>
                          <li><a href="Student.jsp" class="nav">Students</a></li>
                         <li><a href="teacher.jsp" class="nav">Teacher</a></li>
                         <li><a href="login.jsp" class="nav">Student Login  </a></li>
                         <li><a href="ContactUs.jsp" class="nav"> Contact Us </a></li>
                         
                    </ul>
         
        </div> 
         <hr>
         <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         <hr>
       
        
          <form method='post'>
          <table align='center'>
              <tr><td>Teachers email:</td><td><input type="text" name="t1" id="t1"></td></tr>
              <tr><td>Name:</td><td><input type="text" name="t2" id="t2"></td></tr>
              <tr><td>Mobile No:</td><td><input type="text" name="t3" id="t3"></td></tr>
              <tr><td>Department:</td><td><input type="text" name="t4" id="t4"></td></tr>
              <tr><td></td><td><input type="submit" name="b1" value="Save"></td></tr>
             
          </table>
      </form>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         
         <hr>
    </body>
</html>
