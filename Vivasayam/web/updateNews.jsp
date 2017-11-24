<%-- 
    Document   : updateNews
    Created on : 5 Mar, 2016, 6:31:48 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
                font-size: 40px;
            }
            b{
               
                font-size: 20px;
            }
            a{
                text-decoration: none;
            }
            input[type="text"]{
                width:95%;
                padding:10px;
            }
            cc.id{
                font-size: 30px;
            }
            tr td{
                padding: 20px;
            }
            input[type="submit"]{
                padding:10px;
                text-align: center;
            }
    </style>
        
    </head>
    <body>
        <div>
            <strong>Vivasaya Nanban</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul id="log">
                <li id="a"><a id="sign" href="admin.jsp">Home</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="updateNews.jsp">update news</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <li><a href="farprof.jsp">farmer profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="marprof.jsp">market profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="intprof.jsp">intermediator profile</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
        <br><br>
        <h1>Update News:</h1>
        <hr>
        <br><br>
        <form action="http://localhost:8084/Vivasayam/newsdata.jsp" method="POST">
        <table>
            <tr>
                <td><b class="cc">
                        Header:</b></td><td><input type="text" name="he" id="he"/></td>
            </tr>
            <tr>
                <td><b class="cc">news:</b> </td>
                <td><textarea rows="20" cols="60" name="news" id="news"></textarea></td>
            </tr>
            <tr>
                <td><b class="cc"> notes:</b></td><td><input type="text" name="not" id="not"/></td>
            </tr>
            <tr>
                <td></td>
                <td><center><input type="submit" value="update news"/></center></td> 
                
            </tr>
            </table>
        </form>

    </body>
</html>
