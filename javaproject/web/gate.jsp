<%-- 
    Document   : gate
    Created on : May 4, 2017, 11:19:53 AM
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
        #gate{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:300px;
			height:730px;
			border:2px solid green;
                        text-decoration: none;        
        }
        #gate ul li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        background: green;
                        margin-top: 25px;
                        text-decoration: none;
                      
        }
        #gate ul li  :hover{
                        color:blue;
                     }
        #gate ul li a{
                        font-family: arial;
                        font-size: 20px;
                        color:white;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
                }
        #gateexam{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:985px;
			height:780px;
			border:2px solid green;
                        background: white;
                }
                #gateexam ol li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        color:black;
                        margin-top: 25px;
                        
                }
                #gateexam ol li p{
                        font-family: arial;
                        font-size: 20px;
                        color:black;
                        text-decoration: none;
                        line-height: 30px;
                        padding-left: 10px;
                        text-align:  justify;
                }
        </style>
    </head>
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
          <div id="gate">
             <ul>
                 <li><a href="#">What is Gate </a></li>
                 <li><a href="#"> Why Gate 2018? </a></li>
                 <li><a href="#">Gate 2018 Eligibility </a></li>
                 <li><a href="#">Gate 2018 Exam Pattern </a></li>
                 <li><a href="#"> Gate 2018 Exam Schedule </a></li>
                 <li><a href="#"> Subject Specialization Priority </a></li>
                 <li><a href="#"> Subjectwise Analysis </a></li>
                 <li><a href="#">How to Prepare For Gate 2018</a></li>
                 <li><a href="#"> Gate 2018 Syllabus</a></li>
                 <li><a href="#">Virtual Calculator Tutorial</a></li>
            </ul>
         </div>
         <div id="gateexam">
             <h1>What is  Gate</h1>
                     <ol>
                         <li>
                             <p>
                             Graduate Aptitude Test in Engineering (GATE) is an all India examination that primarily tests
                             the comprehensive understanding of various undergraduate subjects in Engineering and Technology.
                             GATE is conducted jointly by the Indian Institute of Science and seven IITs (IIT Bombay, IIT Delhi,
                             IIT Guwahati, IIT Kanpur, IIT Kharagpur, IIT Madras and IIT Roorkee) on behalf of the National 
                             Coordination Board – GATE, Department of Higher Education, Ministry of Human Resource Development
                             (MHRD), and Government of India.
                             </p>
                              <p>                         
                            Management institutes like NITIE, Mumbai offer admission to Post Graduate Diploma in
                            Industrial Engineering on the basis of GATE score
                            </P>
                         </li>
                     </ol>
             <div>
             <table border="1">
                <caption><h2>Gate paper</h2></caption>
                <tr>
                <th>PAPER</th>
                <th>CODE</th>
                <th>PAPER</th>
                <th>CODE</th>
                </tr>
                <tr>
                <td>Aerospace Engineering</td>
                <td>AE</td>
                <td>Geology and Geophysics</td>
                <td>GG</td>
                </tr>
                <tr>
                <td>Agricultural Engineering</td>
                <td>AG</td>
                <td>Instrumentation Engineering</td>
                <td>IN</td>
                </tr>
                <tr>
                <td>Architecture and Planning</td>
                <td>AR</td>
                <td>Life Sciences</td>
                <td>XL</td>
                </tr>
                <tr>
                <td>Biotechnology</td>
                <td>BT</td>
                <td>Mathematics</td>
                <td>MA</td>
                </tr>
                <tr>
                <td>Civil Engineering</td>
                <td>CE</td>
                <td>Mechanical Engineering</td>
                <td>ME</td>
                </tr>
                <tr>
                <td>Chemical Engineering</td>
                <td>CH</td>
                <td>Mining Engineering</td>
                <td>MN</td>
                 <tr>
                <td>Computer Science &
                Information Technology</td>
                <td>CS</td>
                <td>Metallurgical Engineering</td>
                <td>MT</td>
                </tr></tr>
                <tr>
                <td>Chemistry</td>
                <td>CY</td>
                <td>Physics</td>
                <td>PH</td>
                </tr>
                <tr>
                <td>Electronics and Communication
                Engineering</td>
                <td>EC</td>
                <td>Production and Industrial Engineering</td>
                <td>PI</td>
                </tr>
                <tr>
                <td>Electrical Engineering</td>
                <td>EE</td>
                <td>Textile Engineering & Fibre Science</td>
                <td>TF</td>
                </tr>
                <tr>
                <td>Engineering Sciences</td>
                <td>XE</td>
                <td>Ecology and Evolution</td>
                <td>EY</td>
                </tr>
                <tr>
                <td>Petrolium Engineering</td>
                <td>PE</td>
                <td></td>
                <td></td>
                </tr>
                </table>
         </div>
         </div>
         
         <hr>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    </body>
    </div>
</html>
