<%-- 
    Document   : index
    Created on : May 4, 2017, 10:49:39 AM
    Author     : Freeware Sys
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        #outerbox{
				width:450px;	
				overflow:hidden;
		}
	#sliderbox{
			position:relative;
			width:1800px;
			height:300px;
			margin:auto;
			animation:jatinder 20s infinite;
		}
	#sliderbox img{
			float:left;
		}
	@keyframes jatinder{
				0%{
					left:0px;
					
				}
				20%{
					left:0px;
					
				}
				25%{
					left:-450px;
					
				}
				45%{
					left:-450px;
				}
				50%{
					left:-900px;
				}
				70%{
					left:-900px;
				}
				75%{
					left:-1350px;
				}
				95%{
					left:-1350px;
				}
				100%{
					left:-1800px;
					
				}
	}
        .pg_cnt{
                    color:black;
                    width:850px;
                    border:1px solid;
                    float:left;
                    background: white;
		
        }
        .pg_cnt h3{
            color:blue;
            font-size: 30px;
            font-family: Arial;
        }
        .pg_cnt p{
                font-size: 18px;
                font-family: Arial;
                text-align:justify;
                margin-left: 10px;
                margin-right: 10px;
                line-height: 24px;
        }
        #right_wrapper{
                        
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:450px;
			height:655px;
			border:2px solid green;
                        
			
            
        }
        #right_wrapper h3 {
                        font-family: arial;
                        font-size: 30px;
                        border-bottom: 2px solid blue;
                        color: white;
                        margin-left: 10px; 
                        margin: 10px;
                        background: green;
                        padding: 10px;
        }
        #right_wrapper ul li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        background: green;
                       margin-top: 10px;
                      
        }
        #right_wrapper ul li  :hover{
                        color:blue;
        }
        #right_wrapper ul li a{
                        font-family: arial;
                        font-size: 20px;
                        color:white;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
        }
        
                        
             
        #news{
			width:350px;
			height:400px;
			border:3px solid green;
			float:left;
		}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            Gate Campus
        </title>
        <%
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Onlineexam","root","");
                PreparedStatement stmt;
                ResultSet rs;
                session.setAttribute("VALID",true);
               
       %>
                
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
                         <li><a href="admission.jsp" class="nav"> Admission </a></li>
                         <li><a href="login.jsp" class="nav"> Login </a></li>
                         <li><a href="ContactUs.jsp" class="nav"> Contact Us </a></li>
                    </ul>
         
        </div> 
         <hr>
         <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         <hr>
         
             <div id="outerbox">
                <div id="sliderbox">
                    <img src="im2.jpg"  width="450px " height="300 px"/>
                    <img src="image1.jpg" width="450px " height="300 px" />
                    <img src="b1.jpg" width="450px " height="300 px"/>
                    <img src="b4.jpg"  width="450px " height="300 px"/>
                </div>
            </div>
         <hr>
         <div>
             
         </div>
         <div class="pg_cnt">
             <h3 color="blue"> GATE/ESE-2018 Online Test Serise</h3>
    <p>
    Online Test Series is designed considering the current trend of actual examination. 
    The test papers are developed by R&D wing of Gate Campus which includes experienced faculties,
    professors from reputed colleges/universities and GATE & ESE toppers. Subject-wise and Full syllabus 
    tests are designed for thorough coverage of the entire syllabus in a systematic way. The Online Test Series
    is available for Civil Engineering, Mechanical Engineering, Electrical Engineering, Electronics Engineering,
    Computer Science Engineering, Instrumentation Engineering, Production & Industrial Engineering. Gate Campus Online Test
    Series provides a platform for students to judge their performance and results will be analyzed on all India basis.
    The Test Series includes Basic and Advanced level tests to enable concept building and  improve performance. 
    The test papers are designed considering previous exam papers and standard of the questions resembles the actual 
    examination in all aspects, helping students to overcome their weaknesses, rectify errors and perform better. More 
    importantly the  test papers are designed as per revised syllabus of GATE/ESE-2018.
    </p>
    <p style="margin-top:12px">
    Video solutions are provided by senior faculty members. Gate Campus has dedicated R&D 
    team which closely analyses the examination trends and accordingly quality questions are newly framed every year. 
    All the parameters like test standard, question quality, number of questions, negative marking are aligned as per the 
    actual exam pattern. Test series will be benefiting students in developing skills like time management and accuracy
    required to crack the examination. Solutions with detailed step by step explanation will be provided, helping 
    students to develop problem solving techniques. Comprehensive test analysis will be provided  on various factors
    like All India Rank, Score, Percentile, Comparison with toppers, Test wise performance, Cut-off analysis etc.
    Online Test Series is a tool to crack GATE/ESE, where candidates will get 
    opportunity to compete with thousands of quality
    students of Gate Campus classroom study course.
    </p>
</div>
         <div id="right_wrapper">
             <h3> What's New </h3>
             <ul>
                 <li><a href="#" >Weekend Batch</a></li>
                 <li><a href="#" >Regular Batch</a></li>
                 <li><a href="#" >Rankers Batch</a></li>
                 <li><a href="#" >Gate Batch</a></li>
                 <li><a href="#" >ESE Batch</a></li>
             </ul>
             </div>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    <hr>
    </body>
    <br clear="all">
    </div>
</html>
