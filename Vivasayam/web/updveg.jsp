<%-- 
    Document   : updveg
    Created on : 24 Mar, 2016, 1:26:18 AM
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
            h3{
                font-size: 40px;
            }
            a#kd{
                font-size: 20px;
            }
           </style> 
    </head>
    <body>
        <%
        HttpSession ss=request.getSession();
        String s=request.getParameter("p");
        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                        Statement st=con.createStatement();
                        st.executeUpdate("update vivasayam set product='"+s+"' where phone='"+ss.getAttribute("phone").toString()+"' ");
               
        }catch(Exception e){
            out.println(e);
        }
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
            <center><h3>
                    Your product details Updated!
        </h3>
                <a href="profile.jsp" id="kd">back to profile page</a>
            </center>
             <div id="footer" style="margin-top: 28%;"><a href="farmer.jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>
    </body>
</html>
