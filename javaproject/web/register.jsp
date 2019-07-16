

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate Campus</title>
        <script>
            function f1()
            {
                obj1=document.getElementById("t1");
                obj2=document.getElementById("t2");
                obj3=document.getElementById("t3");
                obj4=document.getElementById("t4");
                obj5=document.getElementById("t5");
                obj6=document.getElementById("t6");
                s1=obj1.value;
                s2=obj2.value;
                s3=obj3.value;
                s4=obj4.value;
                s5=obj5.value;
                s6=obj6.value;
                 if(s1.length!=10)
                {
                    alert("Invalid Roll No!!!!");
                    obj1.focus();
                    return false;
                }
                else
                {
                    for(i=0;i<10;i++)
                    {
                        c=s1.substring(i,i+1);
                        if(c<'0' || c>'9')
                        {
                            alert("Only digits");
                            obj1.focus();
                            return false;
                        }
                    }
                }
                if(s2=="")
                {
                    alert("Name is Compulsary");
                    obj2.focus();
                    return false;
                }
               
                if(s3=="")
                {
                    alert("Father Name is Compulsary");
                    obj3.focus();
                    return false;
                }
                 if(s4.length!=1)
                {
                    alert("Invalid Semester !!!!");
                    obj4.focus();
                    return false;
                }
               
                len=s5.length;
                at=s5.indexOf("@");
                dot=s5.indexOf(".");
                if(len<10 || at<4 || dot<8|| len-dot<3||dot-at<3)
                {
                    alert("Invalid Email");
                    obj5.focus();
                    return false;
                }
                if(s6.length!=10)
                {
                    alert("Invalid Mobile No!!!!");
                    obj6.focus();
                    return false;
                }
                else
                {
                    for(i=0;i<10;i++)
                    {
                        c=s6.substring(i,i+1);
                        if(c<'0' || c>'9')
                        {
                            alert("Only digits");
                            obj6.focus();
                            return false;
                        }
                    }
                }
                return true;
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
        <%
            try{
            String s = request.getParameter("b1");
            if (s != null && s.equals("Submit")) 
            {
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
            PreparedStatement stmt=con.prepareStatement("Insert into students values(?,?,?,?,?,?)");
                stmt.setString(1, request.getParameter("t1"));
                stmt.setString(2, request.getParameter("t2"));
                stmt.setString(3, request.getParameter("t3"));
                stmt.setString(4, request.getParameter("t4"));
                stmt.setString(5, request.getParameter("t5"));
                stmt.setString(6, request.getParameter("t6"));
                stmt.executeUpdate();
                stmt = con.prepareStatement("Insert into users values(?,?,'Student','N')");
                stmt.setString(1,request.getParameter("t1"));
                stmt.setString(2,request.getParameter("t6"));
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
                         <li><a href="gate.jsp" class="nav">GATE</a></li>
                         <li><a href="ies.jsp" class="nav">IES</a></li>
                         <li><a href="testfeatures.jsp" class="nav">Test Feature</a></li>
                         <li><a href="fee.jsp" class="nav">Fee</a></li>
		         <li><a href="freemocktest.jsp" class="nav"> Free MockTest </a></li>
		         <li><a href="feestructure.jsp" class="nav">Fee Structure</a></li>
                         <li><a href="login.jsp" class="nav">Student Login  </a></li>
                         <li><a href="ContactUs.jsp" class="nav"> Contact Us </a></li>
                         
                    </ul>
         
        </div> 
         <hr>
         <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         <hr>
     <center>
     <div class="loginform">  
     <h3 class="formheading">Registration</h3> 
      <form method='post'>
          <table align='center'>
              <tr><td>Roll No*:</td><td><input type="text" name="t1" id="t1"></td></tr>
              <tr><td>Name*:</td><td><input type="text" name="t2" id="t2"></td></tr>
              <tr><td>Father Name*:</td><td><input type="text" name="t3" id="t3"></td></tr>
              <tr><td>Semester*:</td><td><input type="text" name="t4" id="t4"></td></tr>
              <tr><td>Email*:</td><td><input type="text" name="t5" id="t5"></td></tr>
              <tr><td>Mobile No*:</td><td><input type="text" name="t6" id="t6"></td></tr>
              <tr><td></td><td><input type="submit" name="b1" value="Submit" onclick="return f1()" class="sub"></td></tr>
          </table>
      </form>
     </div> 
    </center>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         
         <hr>
    </body>
</html>
