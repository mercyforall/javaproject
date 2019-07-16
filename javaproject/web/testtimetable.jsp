<%-- 
    Document   : testtimetable
    Created on : May 4, 2017, 11:53:44 AM
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
         <div >
             <h2><marquee behavior="alternate" scrollamount="right" scrollamount="5"> Registration will close soon </marquee></h2>
         </div >
         <hr>
          <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
         
         <hr>
  
    </body>
</html>
