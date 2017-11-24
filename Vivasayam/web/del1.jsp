<%-- 
    Document   : enquire
    Created on : 6 Mar, 2016, 4:04:51 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
            div{
           background:rgba(0,0,0,1);
            background-attachment: fixed;
           background-size: cover;
           background-position:center;
           color:white;
           padding:15px;
           color:green;
          
        }
        div#footer{
                background-color: black;
            }
            a{
                text-decoration: none;
            }
             
        li{
            font-size:30px;
            
           align-self: baseline;
            
            display:inline;
            
            
        }
        ul#log li a{
            color:white;
           
            text-decoration: none;
           // border-radius: 4px 4px 0 0;
          //  text-align: right;
           // margin-left:5%;
        }
        ul#log li a:hover{
            background-color: green;
          
        }
        ul#log{
            align-self:baseline; 
        }
        
            a#li{
                margin-left: 20%;
            }
            strong{
                font-size: 40px;
            }
            b{
                margin-left: 70%;
                font-size: 30px;
            }
            b1{
                font-size: 25px;
            }
            table{
                margin-top:3%;
                border: solid;
                color: greenyellow;
                background-color: grey;
               
            }
            tr td{
                width: 5%;
                font-size: 30px;
            }
            input[type="text"]{
                padding:10px;
                margin-top: 3%;
                width:20%;
                border: 2px solid black;
            }
            input[type="submit"]{
                padding:10px;
                margin-top: 3%;
                border:2px solid black;
            }
            div#footer{
                margin-top:24%;
            }
            input[type="button"]{
                padding:15px;
                font-size: 30px;
                width:5%;
                margin-left: 20%;
                background-color:green;
                margin-top:5%;
            }
            input[type="button"]#but{
                padding:15px;
                font-size: 30px;
                width:5%;
                margin-left: 47%;
                background-color:red;
                margin-top:5%;
                
            }
        </style>
    </head>
    <body>
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp" id="ll">logout</a></b></b>
            <ul id="log">
                <li id="a"><a id="sign" href="farmer.jsp">Home </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <li><a href="profile.jsp">profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire.jsp">price enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire1.jsp">market enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
    <center>
        <strong> <h1>ARE YOU SURE YOU WANT TO DELETE THE ACCOUNT?</h1></strong></center>
    <a href="dele.jsp"><input type="button" value="yes"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="profile.jsp"><input type="button" value="No" id="but"/></a>
        <br><br><br><br>
        <br><br><br><br><br><br><br>
        
         <div id="footer"><a href="market,jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>
        
    </body>
</html>
