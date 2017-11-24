<%-- 
    Document   : logout
    Created on : 16 Mar, 2016, 9:00:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            history.forward();
            </script>
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();
        %>
        <jsp:forward page="index.html"/>
    </body>
</html>
