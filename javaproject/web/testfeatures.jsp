<%-- 
    Document   : testfeatures
    Created on : May 4, 2017, 11:53:19 AM
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
        #testfeatures{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:1310px;
			height:500px;
			border:2px solid green;
                        text-decoration: none;
                        background: white;
            
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
         <div>
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div>
         <hr>
                <div id="testfeatures">
                    <div>
                    <h3> Test Feature:-</h3>
                    <p>
                        GATE-2018 Online Test Series is designed to provide the real time exam experience to the aspirants. Part Syllabus and Full Syllabus tests are designed for thorough coverage of the entire syllabus in a systematic way. Most importantly, these tests are designed as per revised syllabus of GATE- 2018 .Online Test Series is the best platform to enable concept building and to improve the performance. The test papers are developed considering previous exam papers and the standard of the questions will be matching the actual examination in all the aspects, helping students to rectify their weakness and excel in competitive exams.
                    </p>
                    <h3> Who develops test papers for GATE Online Test Series ? </h3>
                    <p>
                        Gate Campus has dedicated R&D team which consists of experienced faculties, professors from reputed colleges/Universities, GATE and ESE toppers. Our team closely analyses the examination trends and accordingly quality questions are newly framed every year. In these Online Tests Series all the parameters like test standard, question quality, number of questions, negative marking are aligned as per the actual exam pattern. Special care is taken to design the test papers as per revised pattern of GATE-2018 .
                    </p>
                    
                </div>
         <hr>
         <div>
             <table border="1">
                <caption><h2>GATE-2018 Online Test Series</h2></caption>
                <tr>
                <th>16 Basic Level Tests
                    Basic level tests are developed to help candidate to learn the basics and to have good grip on the subject resulting in confidence building.</th>
                <th>16 Advanced Level Tests
                    Advanced level tests consist of considerably tough and tricky questions in order to develop the feel of competition.</th>
                <th>4 GATE Mock Tests
                    This section includes tests which have more probability of appearing in GATE-2018.</th>
                <th>24 Practice Tests
                    This section includes standard tests for effective practicing and to improve exam facing skills.</th>
                <th>Total
                        60
                        Quality
                        Tests
                </th>
                </tr>
                <th colspan="4">GATE Online Test Series is designed as per GATE pattern. These tests include Technical subjects, Engineering Mathematics, Verbal and Numerical Ability as per GATE-2018 revised syllabus</th>
                </table>
            </div>
                </div>
          <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         
         <hr>

    </body>
    </div>
</html>
