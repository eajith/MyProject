<%-- 
    Document   : dele
    Created on : 19 Mar, 2016, 2:32:59 AM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
         <%try{
                        HttpSession s=request.getSession();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                        Statement st=con.createStatement();
                        st.executeUpdate("delete from vivasayam where phone='"+s.getAttribute("phone") +"' ");
         }
         catch(Exception e){
             out.println(e);
         }
         %>
         <jsp:forward page="index.html"></jsp:forward>
    </body>
</html>
