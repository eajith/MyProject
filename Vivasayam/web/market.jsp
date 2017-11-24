<%-- 
    Document   : admin
    Created on : 5 Mar, 2016, 5:17:52 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
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
        body{
            background: url("8589130422244-rice-field-wallpaper-hd.jpg");
             background-repeat: no-repeat;
             background-position: center;
             background-size: cover;
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
            a{
                text-decoration: none;
            }
            article{
                background-color: white;
                max-width: 1000px;
                padding:20px;
                margin:0 auto;
            }
            div#footer{
                background-color: black;
            }
    </style>
        
    </head>
    
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp">logout</a></b>
            <ul id="log">
                <li id="a"><a id="sign" href="market.jsp">Home </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="profile1.jsp">Profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="updatePrice.jsp">Update Price </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </ul>
        </div>
        <%
             try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
            Statement st=con.createStatement(); 
            ResultSet rs=st.executeQuery("select * from news ORDER BY date DESC");
            while(rs.next()){
                %>
                <article>
                    <h2><% out.println(rs.getString(1));%></h2>
                    
                    <p><% out.println(rs.getString(2)); %></p>
                    
                    <p><a><% out.println(rs.getString(3)); %></a></p>
                    <p>TIME:<% out.println(rs.getTimestamp(4)); %></p>
                </article>
                <br>
                <%
                }
             }
             catch(ClassNotFoundException | SQLException e){
                 out.println(e);
                 
             }
            %>
        <article>
            
        </article>
       
          <div id="footer"><a href="market,jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>
</html>
