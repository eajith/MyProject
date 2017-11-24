<%-- 
    Document   : enquire1
    Created on : 6 Mar, 2016, 4:53:58 PM
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
            input[type="submit"]{
                width: 17%;
                padding:10px;
                margin-left: 3%;
            }
        </style>
    </head>
    <body>
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="logout.jsp" id="ll">logout</a></b></b>
            <ul id="log">
                <li id="a"><a id="sign" href="farmer.jsp">Home </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="profile.jsp">Profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire.jsp">Price Enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="enquire1.jsp">Market Enquire</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
        <br><br><br>
        <h1 style="color:green;">Update your profile</h1>
        <br><hr>
        <table>
            <form action="upprofdata.jsp" method="GET" ><table>
            <tr> <td style="font-size: 30px;">Change  First Name:</td><td><input type='text' name='cufn' id='cufn'/></td></tr>
            <tr> <td style="font-size: 30px;">Change  Last Name:</td><td><input type='text' name='culn' id='culn'/></td></tr>
                    
            <tr> <td style="font-size: 30px;"> Change phone number:</td><td><input type='text' name='cpn' id='cpn'/></td></tr>
                    
            <tr> <td style="font-size: 30px;">  Change place:</td><td><input type="text" name="cp" id="cp"/></td></tr>
                    
            <tr> <td style="font-size: 30px;">   Change District:</td><td>  <input type='text' name='cd' id='cd'/></td></tr>
         
             </table>
                <br>
                <br>
                <input type='submit' value='update'/>
        </form>
        
         <%  
           HttpSession s=request.getSession();
           if(request.getParameter("cufn")!=null){
               s.setAttribute("fn", request.getParameter("cufn"));
           }
           if(request.getParameter("culn")!=null){
               s.setAttribute("ln", request.getParameter("culn"));
           }
           if(request.getParameter("cpn")!=null){
               s.setAttribute("phone", request.getParameter("cpn"));
           }
           if(request.getParameter("cp")!=null){
               s.setAttribute("place",request.getParameter("cp"));
           }
           if(request.getParameter("cd")!=null){
               s.setAttribute("district", request.getParameter("cd"));
           }
             

try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                        Statement st=con.createStatement();
                        PreparedStatement ps=con.prepareStatement("update vivasayam set fname=? , lname=? , phone=? , place=? , district=? where phone=?");
                        ps.setString(1, s.getAttribute("fn").toString());
                        ps.setString(2, s.getAttribute("ln").toString());
                        ps.setString(3, s.getAttribute("phone").toString());
                        ps.setString(4, s.getAttribute("place").toString());
                        ps.setString(5, s.getAttribute("district").toString());
                        ps.setString(6, s.getAttribute("phone").toString());
                        ps.executeUpdate();
                        
}catch(Exception e){
    out.println(e);
}
           %>
           <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>values updated</strong>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <footer>
         <div id="footer"><a href="market,jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>
        </footer>
    </body>
</html>
