<%-- 
    Document   : profile
    Created on : 25 Feb, 2016, 10:42:48 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Online Store</title>
         <style>
        div{
           background:rgba(0,0,0,0.9);
            background-attachment: fixed;
           background-size: cover;
           background-position:center;
           color:white;
           padding:15px;
       
           color:green;
          
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
                font-size: 30px;
            }
            b{
                margin-left: 70%;
                font-size: 30px;
            }
            a{
                text-decoration: none;
            }
            h1{
                margin-left: 1%;
                font-size: 35px;
            }
    </style>
        
    </head>
    <body>
        <%
            HttpSession s=request.getSession();
            
            String fn=s.getAttribute("fn").toString();
            String ln=s.getAttribute("ln").toString();
            String phone=s.getAttribute("phone").toString();
            String place=s.getAttribute("place").toString();
            String district=s.getAttribute("district").toString();
            String product=s.getAttribute("product").toString();
            %>
           
            
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp" id="ll">logout</a></b></b>
            <ul id="log">
                <li id="a"><a href="market.jsp">Home</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="profile.jsp">Profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <li><a href="enquire2.jsp">Farmer enquire </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
         <h1>User Profile :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="edit.jsp"><input type="submit" value="update profile"/></a> <a href="del.jsp"><input type="submit" value="delete account" class="aa"/> </a>    </h1>      
       
            
         <table>

            <tr><td rowspan="3 "><img src='1453937878_user.png' alt="error"/>   </td>          <td> <strong>name  :  <%=fn%> <%=ln%></strong></td></tr>
            <tr><td><strong>phone  :  <%=phone%></strong></td></tr>
            <tr><td><strong>place  :  <%=place%></strong></td></tr>
            <tr><td>upload pic:<input type='file' /> </td><td><strong>district  :  <%=district%></strong></td></tr>
  
        </table>
            
           
            
            <br><br><br>
        
        
        
     <div id="footer"><a href="market.jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>   
    </body>
</html>
