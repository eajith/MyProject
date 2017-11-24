<%-- 
    Document   : updatePrice
    Created on : 16 Mar, 2016, 9:14:08 PM
    Author     : User
--%>

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
            input[type="text"]{
                width:100%;
                padding:10px;
            }
            cc.id{
                font-size: 30px;
            }
            table{
                padding:20px;
            }
            td{
                padding:20px;
            }
            input[type="submit"]{
                width:15%;
                margin-left: 7%;
                padding:10px;
            }
        </style>
    </head>
    <body>
        <div>
            <strong>Vivasaya Nanban</strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp" id="ll">logout</a></b></b>
            <ul id="log">
                <li id="a"><a id="sign" href="farmer.jsp">home </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="profile.jsp">profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <li><a href="updatePrice.jsp">Update Price </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
        <br>
        <br>
        <h1>Update your market price</h1>
        <hr>
        <br>
        <br>
        <table>
            <form action="vegData.jsp" method="GET" ><table>
            <tr> <td style="font-size: 30px;">Enter product Name:</td><td><input type='text' name='pn' id='pn'/></td></tr>
                    
            <tr> <td style="font-size: 30px;">    Enter product variety:</td><td><input type='text' name='pv' id='pv'/></td></tr>
                    
            <tr> <td style="font-size: 30px;">       Enter previous day prize:</td><td><input type="text" name="ppp" id="ppp"/></td></tr>
                    
            <tr> <td style="font-size: 30px;">       Enter the today price:</td><td>  <input type='text' name='pp' id='pp'/></td></tr>
             </table>
                <input type='submit' value='update'/>
        </form>
       
            <br><br><br><br><br>
           <div id="footer"><a href="market.jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
<p><a href="/node/1496">Copyright</a> © 2016 <a href="http://www.icar.org.in">BY kumar team</a><br>
Ajith kumar.E,M.Sathish Kumar coimbatore-641032. <a href="http://india.gov.in/">INDIA</a></p>
<div id="credits">Developed &amp; Maintained   by kumar assosiation<br />
</div>   
    </body>
</html>
