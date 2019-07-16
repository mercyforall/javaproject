<%-- 
    Document   : Exam
    Created on : May 8, 2017, 8:51:34 AM
    Author     : Freeware Sys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gate campus</title>
         <script>
         var xmlhttp;
         function getPrevious()
         {
             xmlhttp=new XMLHttpRequest();
             xmlhttp.onreadystatechange=showQuestion;
             xmlhttp.open("GET","getQuestion.jsp?q=P",true);
             xmlhttp.send(null);
         }
         function getNext()
         {
             xmlhttp=new XMLHttpRequest();
             xmlhttp.onreadystatechange=showQuestion;
             xmlhttp.open("GET","getQuestion.jsp?q=N",true);
             xmlhttp.send(null);
         }
         function showQuestion()
         {
             if(xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                 reply=xmlhttp.responseText.trim();
                 //alert(reply);
                 arr=reply.split("#");
                 document.getElementById("question").innerHTML=arr[0];
                 document.getElementById("option1").innerHTML=arr[1];
                 document.getElementById("option2").innerHTML=arr[2];
                 document.getElementById("option3").innerHTML=arr[3];
                 document.getElementById("option4").innerHTML=arr[4];
                 x=arr[12]*1;
                 x=x+1;
                 document.getElementById("n1").innerHTML="Q "+x+"):";
                 ans=arr[13].trim()*1;
                 document.getElementById("rr1").checked=false;
                 document.getElementById("rr2").checked=false;
                 document.getElementById("rr3").checked=false;
                 document.getElementById("rr4").checked=false;
                 if(ans==1) document.getElementById("rr1").checked=true;
                 if(ans==2) document.getElementById("rr2").checked=true;
                 if(ans==3) document.getElementById("rr3").checked=true;
                 if(ans==4) document.getElementById("rr4").checked=true;
                 //alert(ans);
             }
         }
         function setAnswer(f)
         {
             ans=f.value;
             xmlhttp=new XMLHttpRequest();
             xmlhttp.open("POST","setanswer.jsp?ans="+ans,true);
             xmlhttp.send(null);
         }
         function f1()
         {
             window.open("Finish.jsp","_self")
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
        </style>
    </head>
    <body onload="getNext()" bgcolor="lightgreen">
        <h1><marquee> GATE CAMPUS  </marquee></h1>
         <div id="img">
         <img src="ram6.jpg" width="100%" height="200px">
         <br clear="all">
         </div>
        <table width="1000px" border="0" align="center" bgcolor="white">
            <tr>
                <th colspan="4">Online Examination</th>
            </tr>
            <tr>
                <td></td><td></td><td style="text-align: right">Remaining time:</td><td>00:00</td>
            </tr>
            <tr>
                <td></td><td style="text-align: right; width:100px"><div id="n1"></div></td><td style="width:1000px"><div id="question"></div></td><td></td>
            </tr>
            <tr>
                <td></td><td style="text-align: right"><input type="radio" name="r1" id="rr1" value="1" onclick="setAnswer(this)"></td><td><div id="option1"></div></td><td></td>
            </tr>
            <tr>
                <td></td><td style="text-align: right"><input type="radio" name="r1" id="rr2" value="2"  onclick="setAnswer(this)"></td><td><div id="option2"></div></td><td></td>
            </tr>
            <tr>
                <td></td><td style="text-align: right"><input type="radio" name="r1" id="rr3" value="3"  onclick="setAnswer(this)"></td><td><div id="option3"></div></td><td></td>
            </tr>
            <tr>
                <td></td><td style="text-align: right"><input type="radio" name="r1" id="rr4" value="4"  onclick="setAnswer(this)"></td><td><div id="option4"></div></td><td></td>
            </tr>
            <tr>
                <td></td><td></td><td></td>
            </tr>
            <tr>
                <td></td><td></td><td><input type="button" value="Previous" onclick="getPrevious()"><input type="button" value="Next" onclick="getNext()"><input type="button" value="Finish" onClick="f1()"></td><td></td>
            </tr>
        </table>
        <hr>
         <div>
             <img src="img7.jpg" width="100%" height="100%">
         </div>
    </body>
</html>
