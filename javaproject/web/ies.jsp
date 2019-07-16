<%-- 
    Document   : ies
    Created on : May 4, 2017, 11:19:26 AM
    Author     : Freeware Sys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                         <li><a href="feestructure.jsp" class="nav"> Fee Structure </a></li>
                    </ul>
         
        </div> 
         <hr>
         <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         <hr>
         <div id="ies">
             <ul>
                 <li><a href="#">IES Exam Detail's </a></li>
                 <li><a href="#">IES Eligibility </a></li>
                 <li><a href="#">IES EXAM How To Apply </a></li>
                 <li><a href="#">IES Important Dates </a></li>
                 <li><a href="#">IES Cutoff's</a></li>
                 <li><a href="#">IES Exam Pattern</a></li>
                 <li><a href="#">Previous IES Paper</a></li>
                 <li><a href="#">IES Syllabus</a></li>
                 </ul>
         </div>
         <div id='iesexam'>
             <h1>IES Exam Detail's</h1>
             <ol>
                 <li>
                     <p>
                     Indian Engineering Services (IES/ESE) consists of engineers that work under the government
                     of India to manage a large segment of public sector economy which constitutes of Railroads,
                     Public works, Power, Telecommunications etc.<p>
                         <p>
                        ‘ESE is a competitive examination’ is conducted by the Union Public Services Commission (UPSC) for 
                        recruitment to the Indian Engineering Services. The Examination constitutes of a written examination 
                        followed by an interview for personality test.<p>
                        <p>
                        IES -INDIAN ENGINEERING SERVICES – 2016 ENTRANCE EXAM conducted by Union Public Service Commission 
                        (UPSC) is starting from 27th May, 2016.
                        <p>
                 </li>
             </ol>
         </div>
         <hr>
          <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         
    </body>
</html>
