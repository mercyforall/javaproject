<%-- 
    Document   : psu
    Created on : May 4, 2017, 11:20:28 AM
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
        #psu{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:300px;
			height:550px;
			border:2px solid green;
                        text-decoration: none;        
        }
        #psu ul li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        background: green;
                        margin-top: 25px;
                        text-decoration: none;
                      
        }
        #psu ul li  :hover{
                        color:blue;
                     }
        #psu ul li a{
                        font-family: arial;
                        font-size: 20px;
                        color:white;
                        text-decoration: none;
                        line-height: 20px;
                        padding-left: 10px;
                }
        #psuexam{
                        padding-left:  10px;
                        padding-right: 10px;
                        float:left;
			width:985px;
			height:900px;
			border:2px solid green;
                        background: white;
                }
                #psuexam ol li{
                        padding-bottom: 10px;
                        padding-top: 10px;
                        border-bottom: 1px solid white;
                        color:black;
                        margin-top: 25px;     
                }
                #psuexam ul li p{
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
         <div id="psu">
             <ul>
                 <li><a href="#">Introduction to PSUs </a></li>
                 <li><a href="#">Hoe To Prepare for PSUs?</a></li>
                 <li><a href="#"> PSUs Exam Pattern </a></li>
                 <li><a href="#"> PSUs Salary Structure </a></li>
                 <li><a href="#"> PSUs Percentage Criteria</a></li>
                 <li><a href="#"> PSUs AGE Criteria </a></li>
                 <li><a href="#">PSUs Recruiting Through Gate 2017  </a></li>
                 </ul>
         </div>
         <div id='psuexam'>
             <h1>Introduction to PSUs </h1><br>
             <b>PSUs (Public Sector Undertakings)</b><br>
                     <p>
                         The government owned corporations are termed as Public sector Undertakings (PSUs) in India. 
                         In a PSU majority (51% or more) of the paid share capital is held by central government or by
                         any state government or partly by the central government and partly by one or more state governments.
                         Several Public Sector Undertakings (PSUs) under the aegis of Government of India regularly provide
                         tremendous employment opportunities in various technical and management areas.
                     <p>
                         <b>Maharatna PSUs:</b><br>
                         <p>
                          Maharatna is the status given to top public sector enterprises where the companies have the
                          authority to make foreign investments of upto Rs 5,000 crores without taking any government 
                          approval. To be qualified as Maharatna, the company should gain an annual net profit of over
                          Rs. 5,000 crores, net worth of Rs. 15,000 crores and turnover of Rs. 25,000 crores over past
                          three consecutive years. At present the companies which have Maharatna status are: SAIL, ONGC,
                          NTPC, CIL, IOCL, BHEL and GAIL.   
                        <p>
                            <b>Navratna PSUs:</b><br>
                        <p>
                        Navratna status is conferred to the companies by the Department of Public Enterprises. To be qualified 
                        as a Navratna, the company must obtain a score of 60 out of 100. The score is based on six parameters
                        which include net profit to net worth, total manpower cost to total cost of production or cost of
                        services, PBDIT (Profit before depreciation, interest and taxes) to capital employed, PBDIT to turnover,
                        EPS (Earning per Share) and inter-sectoral performance. Additionally, a company must first be a
                        Miniratna and have four independent directors on its board before it can be made a Navratna.
                        The Navratna status gives privileges to enhance financial and operational autonomy and empowers 
                        to invest up to Rs. 1000 crores or 15% of their net worth on a single project without seeking government
                        approval. In a year, these companies can spend up to 30% of their net worth not exceeding Rs. 1000 
                        crores. They will also have the freedom to enter joint ventures, form alliances and float subsidiaries 
                        abroad.
                        <p>
                        <h1>How to Prepare for PSUs?</h1>
                      
                            <ul>
                                <li>PSUs Entrance Exam Question Paper mainly consists of two major sections:
                                    Technical Section: Subject specialization of related stream
                                    Non-Technical Section: General Awareness, Current Affairs, English 
                                    Language, Reasoning & Aptitude.
                                   Hence to crack PSUs competitive exam, candidate should prepare for 
                                   both technical and non-technical sections, where 50% to 70% questions 
                                   are from technical and remaining questions from non-technical sections.
                                </li>
                                <li>
                                    Be aware of exam pattern of different PSUs like number of technical questions, number of non-technical questions, negative marking, exam duration, marks per question etc.
                                </li>
                                <li>
                                    Be aware of exam pattern of different PSUs like number of technical questions, number of non-technical questions, negative marking, exam duration, marks per question etc.
                                </li>
                                <li>
                                    Prefer Reference books for derivations, equations, conceptual thought process, theory etc.
                                </li>
                                <li>
                                    Use shortcut techniques for numerical solving instead of traditional methods to save time.
                                </li>
                                <li>
                                    Practice previous year question papers and analyze the weak topics and concentrate more on those topics. Always try to solve question papers in a given time frame to obtain an idea as how many questions you are able to solve in given limits.
                                </li>
                            </ul>
                        
                 
            
         </div>
         <hr>
          <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    </body>
     </div>
</html>
