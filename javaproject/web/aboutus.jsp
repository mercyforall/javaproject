<%-- 
    Document   : aboutus
    Created on : May 4, 2017, 11:18:47 AM
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
        #about{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:300px;
			height:400px;
			border:2px solid green;
                        
        }
        #about ul li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        background: green;
                        margin-top: 25px;
                      
        }
        #about ul li  :hover{
                        color:blue;
                     }
        #about ul li a{
                        font-family: arial;
                        font-size: 20px;
                        color:white;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
                }
                #whygatecampus{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:985px;
			height:2500px;
			border:2px solid green;
                        background: white;
                }
                #whygatecampus ol li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        color:black;
                        margin-top: 25px;     
                }
                #whygatecampus ol li a{
                        font-family: arial;
                        font-size: 20px;
                        color:black;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
                }
                #whygatecampus ol li ul li{
                    line-height: 15px;
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
         <div id="about">
             <ul>
                 <li><a href="#">Why Gate Campus </a></li>
                 <li><a href="#">About Gate Campus </a></li>
                 <li><a href="#">journey of Gate Campus </a></li>
                 <li><a href="#">About Faculty Gate Campus </a></li>
                 <li><a href="#">About CMD </a></li>
                 </ul>
         </div>
         <div id="whygatecampus">
             <h2> Why Gate Campus</h2>
             <ol>
                 <li><a href="#">Comprehensive Coverage</a>
                 <ul>
                     <li>In-depth coverage of syllabus (both Tech. and Non-tech) with prime focus on fundamental concepts.</li>
                     <li>Gradual transition from basic to advance level making it duck soup for fresher.</li>
                 </ul>
                 </li>
                 <li><a href="#">Excellent Pool of Faculties</a>
                 <ul>
                     <li>Hub of country's most intellectual engineer faculties, combination of both experienced seniors and vibrant young top rankers of ESE and GATE.</li>
                 </ul>
                 </li>
                 <li><a href="#"> Professionally Managed and Structured Organization</a>
                 <ul>
                 <li>Pre-planned class schedule, with accurate implementation of time-table.</li> 
                 <li>Well-skilled management staff and faculties, serving with full dedication and commitment.</li>
                 </ul>
                 </li>
                 <li><a href="#">Timely Completion of Syllabus</a>
                 <ul>
                     <li>Well framed modules under tutelage of Mr. B. Singh, CMD for early syllabus completion, giving ample time for revision; we believe in "Revision is necessary for Retention.</li>
                 </ul>
                 </li>
                 <li><a href="#">Focused and Comprehensive Study Books</a>
                 <ul>
                     <li>Detailed but relevant to exam, so that need for second book doesn't arise.</li>
                     <li>Thoroughly revised and updated study material, by qualified R & D team of MADE EASY.</li>
                 </ul>
                 </li>
                 <li><a href="#"> Regular Assessment of Performance</a>
                 <ul>
                     <li>GATE online test series.</li>
                     <li>ESE All India classroom test series.</li>
                     <li>Subject-wise classroom tests with discussion.</li>
                     <li>Test environment similar to GATE and UPSC.</li>
                 </ul>
                 </li>
                 <li><a href="#"> Interactive Classrooms and Infrastructure</a>
                 <ul>
                     <li>We believe in "See and Learn" – we have best quality teaching tools with equipped audio-visual classrooms.</li>
                 </ul>
                 </li>
                 <li><a href="#">Regular update on Vacancies/Notifications</a>
                 <ul>
                     <li>
                         Vacancies of govt. departments and exam notifications of GATE, ESE, PSUs and State Services exam are displayed on notice board and announced in class without fail.
                     </li>
                 </ul>
                 </li>
                 <li><a href="#">Complete Guidance for Written and Personality Test</a>
                 <ul>
                     <li>Industrious team of GATE CAMPUS, provides year round mentoring for</li>
                     <li>Interpersonal Skills</li>
                     <li>Communication Skills</li>
                     <li>GD and Psychometric Skills</li>
                     <li>Mock Interviews</li>
                 </ul>
                 </li>
                 <li><a href="#">Motivational and Counseling Seminars</a>
                 <ul>
                     <li>Career counseling by all expert teachers.</li>
                     <li>Sessions on techniques for efficient learning.</li>
                     <li>Motivational sessions by experts and ESE/GATE toppers.</li>
                 </ul>
                 </li>
                 <li><a href="#">Post Exam Support</a>
                 <ul>
                     <li>Guidance for M.Tech Admission.</li>
                     <li>Interview guidance for ESE and PSUs.</li>
                 </ul>
                 </li>
                 <li><a href="#">Astonishing Results</a>
                 <ul>
                     <li>GATE CAMPUS, needless to say has made it EASY thereby, has consistently produced toppers and also maximum number of selections in GATE and ESE.
 </li>
                 </ul>
                 </li>
                 </ol>
             </div>
         <hr>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         </div>
    </body>
</html>
