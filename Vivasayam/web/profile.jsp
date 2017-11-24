<%-- 
    Document   : profile
    Created on : 25 Feb, 2016, 10:42:48 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
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
           background:rgba(0,0,0,1);
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
            textarea{
                margin-left: 1%;
            }
            ll{
                color: brown;
            }
            input[type="submit"]{
                border: solid;
                color: green;
                padding:10px;
            }
             input[type="text"]{
                border: solid;
                padding:10px;
            }
            .aa{
                border: solid;
                color: red;
                padding:10px;
            }
            
    </style>
        
    </head>
    
        <%
             HttpSession s=request.getSession();
             try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select * from vivasayam where phone='"+s.getAttribute("phone").toString()+"' ");
                        rs.next();
                        String sd=rs.getString(8);
           
            String product;
            String fn=s.getAttribute("fn").toString();
            String ln=s.getAttribute("ln").toString();
            String phone=s.getAttribute("phone").toString();
            String place=s.getAttribute("place").toString();
            String district=s.getAttribute("district").toString();
            
                        
            %>
           
          
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp" id="ll">logout</a></b>
            <ul id="log">
                <li id="a"><a href="farmer.jsp">Home</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="profile.jsp">Profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire.jsp">Price Enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire1.jsp">Market Enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
        <h1>User Profile :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="updateProfile.jsp"><input type="submit" value="update profile"/></a><a href="del1.jsp"><input type="submit" value="delete account" class="aa"/> </a>    </h1>      
        
            
         <table>

            <tr><td rowspan="3 "><img src='1453937878_user.png' alt="error"/>   </td>          <td> <strong>name  :  <%=fn%> <%=ln%></strong></td></tr>
            <tr><td><strong>phone  :  <%=phone%></strong></td></tr>
            <tr><td><strong>place  :  <%=place%></strong></td></tr>
            <tr><td></td><td><strong>district  :  <%=district%></strong></td></tr>
  
        </table>
            
            <hr>
            <h1>product details:</h1>
            <strong style="margin-left: 1%;">product:</strong><strong><%out.println(sd);%></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br><br>
            <form action="http://localhost:8084/Vivasayam/updveg.jsp" method="GET">
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="p" />
                <input type="submit" value="change"/>
            </form>
            
            <br><br>
            <hr>
            <br><br><br><br><br><br><br><br><br><br>
            
          <div id="footer"><a href="farmer.jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>
        
<%}catch(Exception e){
                 out.println(e);
             }
            
    %>
</html>
