<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <style>
            input[type="text"]{
                padding:10px;
                margin:10px;
                border-style: outset;
                width:90%;
            }
           
            body:hover{
                opacity:10;
            }
            input[type="password"]{
                padding:10px;
                margin:10px;
                border-style: outset;
                width:90%;
            }
            input[type="submit"]{
                padding:8px;
                margin:10px;
                border-style: outset;
                width:95%;
                background-color: #73AD21;
            }
            center{
                margin-top: 300px;
            }
            div{
               background:rgba(0,0,0,0.9);
                width:25%;
               margin-left:15%;
            }
            input[type="text"]:hover{
                background:lightgray;
            }
            input[type="password"]:hover{
                background: lightgray;
            }
            input[type="submit"]:hover{
                background: orange;
            }
            body{
                background:url("agriculture-wallpaper-1920x1080.jpg");
            }
            h1{
                margin-top:12%;
                margin-left:21%;
                font-size: 50px;;
            }
            b{
                font-size: 20px;
                color:red;
            }
            pre{
                font-size: 20px;
                margin-left: 14%;
            }
            a{
                color:orange;
                text-decoration: none;
            }
            div#header{
                width:100%;
                margin-left:0%;
                height: 5%;
            }
            b#bold{
                color:green;
                font-size: 40px;
            }
            div#footer{
                width:100%;
                margin-left: 0%;
                color:whiter;
                margin-top:15%;
            }
            div#credits{
                margin-left: 0%;
            }
            q{
                color: darkorange;
                font-size: 25px;
                margin-left: 12%;
            }
        </style>
    <body>
        <div id="header">  <b id="bold">Vivasaya Nanban</b>  </div>
       
        <h1> Login! </h1>
        <br>
        <br>
        <div>   `   
            <form action="http://localhost:8084/Vivasayam/logins" method="POST">
            <input type="text" placeholder="phone" name="phone" id="phone" required/><br>
            <input type="password" placeholder="password" name="pwd" id="pwd" required/><br>
            <input type="submit" value="Login"/>
            </form>
        </div>
        
        <pre>New to vivasaya Nanban?....<a href="signup.html">click here!</a></pre>
        <br><br>
        <q><strong>Sorry,Make sure you enter the details correctly...</strong></q>
        
          <div id="footer"><a href="market.jsp">Home</a> | <a href="/node/70">Privacy Policy</a> | <a href="/node/69">Disclaimer</a> | <a href="/node/71">Linking Policy</a> | <a href="/node/6">Contact us</a> | <a href="/node/422">Feedback</a>
              <p><a href="/node/1496">Copyright</a><font style="color:white"> © 2016</font> <a href="http://www.icar.org.in">BY kumar team</a><br>
                  <font style="color:white">Ajith kumar.E,M.Sathish Kumar coimbatore-641032. </font><a href="http://india.gov.in/">INDIA</a></p>
              <div id="credits"><font style="color:white">Developed &amp; Maintained   by kumar assosiation</font><br />
</div>   
        
    </body>
</html>